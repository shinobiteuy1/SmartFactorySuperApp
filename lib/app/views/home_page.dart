import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';
import '../core/utils/footer_bar.dart';
import '../core/utils/header_page.dart';
import '../core/utils/list_view.dart';
import '../modules/home/controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final homeCtrl = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderPage(),
          SizedBox(
            height: 80,
            width: Get.width,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.0.sp, right: 16.0.sp),
              child: ListView(
                children: [
                  FooterBar(),
                  Divider(),
                    SizedBox(
                    height: 1.0.hp,
                  ),
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
                  SizedBox(
                    height: 1.5.hp,
                  ),
                  listBuild(context: context, count: 0),
                  SizedBox(
                    height: 2.0.hp,
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
