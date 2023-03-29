import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';
import 'package:smart_factory_suit/app/core/values/colors.dart';
import 'package:smart_factory_suit/app/views/login.dart';

class Welcome extends StatelessWidget {
 const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(milliseconds: 2000), () {
      Get.to(
        Login(),
        transition: Transition.noTransition,
      );
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: Text('Welcome',
              style: GoogleFonts.notoSansThai(
                textStyle: TextStyle(
                  color: black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0.sp,
                ),
              )),
        ),
      ),
    );
  }
}
