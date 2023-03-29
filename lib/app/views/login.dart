import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_factory_suit/app/config/auth_config.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';
import 'package:smart_factory_suit/app/views/home_page.dart';
import 'package:smart_factory_suit/main.dart';
import '../core/values/colors.dart';
import 'package:aad_oauth/aad_oauth.dart';
import 'package:aad_oauth/model/config.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
   static final Config config = Config(
       tenant: tenant,
       clientId: clientId,
       scope: scope,
       navigatorKey: navigatorKey,
       loader: const SizedBox());
   final AadOAuth oauth = AadOAuth(config);


   void showError({required BuildContext context, required dynamic ex}) {
     showMessage(
       context: context,
       text: ex.toString(),
     );
   }

   void showMessage({required BuildContext context, required String text}) {
     var alert = AlertDialog(content: Text(text), actions: <Widget>[
       TextButton(
           child: const Text('Ok'),
           onPressed: () {
             Navigator.pop(context);
           })
     ]);
     showDialog(context: context, builder: (BuildContext context) => alert);
   }

   void login({required BuildContext context, required bool redirect}) async {
     config.webUseRedirect = redirect;
     final result = await oauth.login();
     result.fold(
       (l) => showError(
         context: context,
         ex: l.toString(),
       ),
       (r) => showMessage(
         context: context,
         text: 'Logged in successfully, your access token: $r',
       ),
     );
     var accessToken = await oauth.getAccessToken();
     if (accessToken != null) {
       ScaffoldMessenger.of(context).hideCurrentSnackBar();
       ScaffoldMessenger.of(context)
           .showSnackBar(SnackBar(content: Text(accessToken)));
     }
   }

   void hasCachedAccountInformation({required BuildContext context}) async {
     var hasCachedAccountInformation = await oauth.hasCachedAccountInformation;
     ScaffoldMessenger.of(context).hideCurrentSnackBar();
     ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(
         content:
             Text('HasCachedAccountInformation: $hasCachedAccountInformation'),
       ),
     );
   }

   void logout({required BuildContext context}) async {
     await oauth.logout();
     showMessage(
       context: context,
       text: 'Logged out',
     );
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Login Azure',
                style: GoogleFonts.notoSansThai(
                  textStyle: TextStyle(
                    color: black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0.sp,
                  ),
                )),
            ElevatedButton(
              child: const Text('Login Popup Azure'),
              onPressed: () {
                login(context: context, redirect: false);
              },
            ),
            ElevatedButton(
              child: const Text('Login Redirect Azure'),
              onPressed: () {
                login(context: context, redirect: true);
              },
            ),
            ElevatedButton(
              child: const Text('Login Out'),
              onPressed: () {
                logout(context: context);
              },
            ),
            TextButton(
              onPressed: () {
                Get.to(
                  HomePage(),
                );
              },
              child: const Text('Go To Home'),
            ),
          ],
        ),
      ),
    );
  }
}
