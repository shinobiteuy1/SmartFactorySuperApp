import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';
import '../core/utils/car_status.dart';
import '../core/utils/footer_bar.dart';
import '../core/utils/header_page.dart';
import '../core/utils/list_view.dart';
import '../core/utils/user_header.dart';
import '../core/values/colors.dart';
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
          Padding(
            padding: EdgeInsets.only(left: 16.0.sp ,right: 16.0.sp),
            child: Column(
              children: [
                FooterBar(),
                Container(
                  width: Get.width,
                  height: 1,
                  color: lineColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}