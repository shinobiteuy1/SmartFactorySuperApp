import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:smart_factory_suit/app/views/welcome.dart';
import 'app/modules/home/binding.dart';
import 'localization/languages.dart';

void main() {
  //Intl.defaultLocale = 'th';
  initializeDateFormatting();
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode (SystemUiMode.manual, overlays: []);
    return GetMaterialApp(
      title: 'Todo List using GetX',
      //home: ConfirmCar(),
      home: const Welcome(),
      initialBinding: HomeBinding(),
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('th','TH'),
      navigatorKey: navigatorKey,
    );
  }
}