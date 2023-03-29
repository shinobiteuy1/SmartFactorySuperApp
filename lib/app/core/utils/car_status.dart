import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';

import '../../modules/home/controller.dart';
import '../values/colors.dart';

class CarStatus extends StatelessWidget {
  CarStatus({Key? key}) : super(key: key);
  final style = TextStyle(fontSize: 12.0.sp, fontWeight: FontWeight.normal);
  final homeCtrl = Get.find<HomeController>();
  final double topWidgetHeight = 200.0;
  final double avatarRadius = 50.0;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16,
      right: 16,
      top: 10.0.sp,
      //top: Get.height / 6.3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 5.0,
                  spreadRadius: -3,
                  offset: Offset(0.0.sp, 8.0.sp),
                )
              ]),
          width: Get.width, // - 32.0.sp,
          height: Get.height / 2.5.sp,
          child: Row(
            children: [
              Expanded(
                  flex: 10,
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 10.0.sp, left: 10.0.sp, bottom: 10.0.sp),
                    //color: blue,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Text('สถานะรถ',
                                  style: GoogleFonts.notoSansThai(
                                    textStyle: TextStyle(
                                      color:
                                          const Color.fromRGBO(52, 64, 84, 1),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0.sp,
                                    ),
                                  )),
                            )),
                        Expanded(
                            flex: 6,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: const Color.fromRGBO(222, 237, 254, 1),
                                  width: 1.0.sp,
                                ),
                                color: white,
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 3,
                                      child: Container(
                                        padding: EdgeInsets.only(left: 5.0.sp),
                                        alignment: Alignment.centerLeft,
                                        child: Text('กำลังเข้าโรงงาน',
                                            style: GoogleFonts.notoSansThai(
                                              textStyle: TextStyle(
                                                color: const Color.fromRGBO(
                                                    102, 112, 133, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 11.0.sp,
                                              ),
                                            )),
                                      )),
                                  Expanded(
                                      flex: 4,
                                      child: Container(
                                        padding: EdgeInsets.only(left: 5.0.sp),
                                        alignment: Alignment.bottomLeft,
                                        child: Text('0 ',
                                            style: GoogleFonts.notoSansThai(
                                              textStyle: TextStyle(
                                                color: primaryColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0.sp,
                                              ),
                                            )),
                                      ))
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                              color: white,
                            )),
                        Expanded(
                            flex: 6,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: const Color.fromRGBO(222, 237, 254, 1),
                                  width: 1.0.sp,
                                ),
                                color: white,
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 3,
                                      child: Container(
                                        padding: EdgeInsets.only(left: 5.0.sp),
                                        alignment: Alignment.centerLeft,
                                        child: Text('ใกล้ออกโรงงาน',
                                            style: GoogleFonts.notoSansThai(
                                              textStyle: TextStyle(
                                                color: const Color.fromRGBO(
                                                    102, 112, 133, 1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 11.0.sp,
                                              ),
                                            )),
                                      )),
                                  Expanded(
                                      flex: 4,
                                      child: Container(
                                        padding: EdgeInsets.only(left: 5.0.sp),
                                        alignment: Alignment.bottomLeft,
                                        child: Text('5',
                                            style: GoogleFonts.notoSansThai(
                                              textStyle: TextStyle(
                                                color: primaryColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0.sp,
                                              ),
                                            )),
                                      ))
                                ],
                              ),
                            )),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: white,
                  )),
              Expanded(
                  flex: 18,
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 10.0.sp, right: 10.0.sp, bottom: 10.0.sp),
                    // decoration: const BoxDecoration(
                    //   image: DecorationImage(
                    //     image:
                    //         AssetImage('lib/Images/delivery-truck.png'),
                    //     fit: BoxFit.contain,
                    //   ),
                    // ),
                    child: SvgPicture.asset(
                      'lib/Images/delivery-truck.svg',
                      fit: BoxFit.contain,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

Widget boxCarStatus(
    {required BuildContext context,
    required String labelTopBox,
    required String dataTopBox,
    required String labelBottomBox,
    required String dataBottomBox
    }) {
  return Positioned(
    left: 16,
    right: 16,
    top: 90.0.sp,
    //top: Get.height / 6.3,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 5.0,
                spreadRadius: -3,
                offset: const Offset(0, 8),
              )
            ]),
        width: Get.width, // - 32.0.sp,
        height: 180.0.sp,
        child: Row(
          children: [
            Expanded(
                flex: 10,
                child: Container(
                  margin: EdgeInsets.only(
                      top: 10.0.sp, left: 10.0.sp, bottom: 10.0.sp),
                  //color: blue,
                  child: Column(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text('สถานะรถ',
                                style: GoogleFonts.notoSansThai(
                                  textStyle: TextStyle(
                                    color: const Color.fromRGBO(52, 64, 84, 1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0.sp,
                                  ),
                                )),
                          )),
                      Expanded(
                          flex: 6,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: const Color.fromRGBO(222, 237, 254, 1),
                                width: 1.0.sp,
                              ),
                              color: white,
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 5.0.sp),
                                      alignment: Alignment.centerLeft,
                                      child: Text(labelTopBox,
                                          style: GoogleFonts.notoSansThai(
                                            textStyle: TextStyle(
                                              color: const Color.fromRGBO(
                                                  102, 112, 133, 1),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11.0.sp,
                                            ),
                                          )),
                                    )),
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 5.0.sp),
                                      alignment: Alignment.centerLeft,
                                      child: Text(dataTopBox,
                                          style: GoogleFonts.notoSansThai(
                                            textStyle: TextStyle(
                                              color: primaryColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0.sp,
                                            ),
                                          )),
                                    ))
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: white,
                          )),
                      Expanded(
                          flex: 6,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: const Color.fromRGBO(222, 237, 254, 1),
                                width: 1.0.sp,
                              ),
                              color: white,
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 5.0.sp),
                                      alignment: Alignment.centerLeft,
                                      child: Text(labelBottomBox,
                                          style: GoogleFonts.notoSansThai(
                                            textStyle: TextStyle(
                                              color: const Color.fromRGBO(
                                                  102, 112, 133, 1),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11.0.sp,
                                            ),
                                          )),
                                    )),
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 5.0.sp),
                                      alignment: Alignment.centerLeft,
                                      child: Text(dataBottomBox,
                                          style: GoogleFonts.notoSansThai(
                                            textStyle: TextStyle(
                                              color: primaryColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0.sp,
                                            ),
                                          )),
                                    ))
                              ],
                            ),
                          )),
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: white,
                )),
            Expanded(
                flex: 18,
                child: Container(
                  margin: EdgeInsets.only(
                      top: 10.0.sp, right: 10.0.sp, bottom: 10.0.sp),
                  // decoration: const BoxDecoration(
                  //   image: DecorationImage(
                  //     image:
                  //         AssetImage('lib/Images/delivery-truck.png'),
                  //     fit: BoxFit.contain,
                  //   ),
                  // ),
                  child: SvgPicture.asset(
                    'lib/Images/delivery-truck.svg',
                    fit: BoxFit.contain,
                  ),
                ))
          ],
        ),
      ),
    ),
  );
}
