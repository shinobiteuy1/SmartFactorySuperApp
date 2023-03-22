import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';
import 'package:smart_factory_suit/app/core/values/colors.dart';
import '../core/utils/car_status.dart';
import '../core/utils/footer_bar.dart';
import '../core/utils/header_page.dart';
import '../core/utils/list_view.dart';
import '../core/utils/user_header.dart';
import '../modules/home/controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final homeCtrl = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              HeaderPage(),
              Positioned(
                child: UserHeader()
              ),
              Positioned(
                child: CarStatus()
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 12.0.sp,right: 12.0.sp),
            child: FooterBar()
          ),
          const Divider(),
            const SizedBox(
            height: 1,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 12.0.sp, right: 12.0.sp),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "รถกำลังเข้าโรงงาน",
                      style: GoogleFonts.notoSansThai(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0.sp,
                        ),
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 1.5,
                  ),
                  listBuild(context: context, count: 0),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "รถกำลังออกโรงงาน",
                      style: GoogleFonts.notoSansThai(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0.sp,
                        ),
                      ),
                    ),
                  ),
                  listBuild(context: context, count: 10),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
