import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:smart_factory_suit/Images/Icons/my_icons_icons.dart';
import 'package:smart_factory_suit/app/controllers/text_form_controller.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';

import '../values/colors.dart';

Widget textFormView({required BuildContext context}) {
  return Column(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ชื่อฟาร์ม",
            style: GoogleFonts.notoSansThai(
              textStyle: TextStyle(
                color: black,
                fontWeight: FontWeight.w400,
                fontSize: 12.0.sp,
              ),
            ),
          ),
          SizedBox(
            height: 5.0.sp,
          ),
          const TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(width: 1, color: greyligColor),
              ),
              hintText: 'ฟาร์ม',
            ),
          ),
          Text(
            "เลขบ่อ",
            style: GoogleFonts.notoSansThai(
              textStyle: TextStyle(
                color: black,
                fontWeight: FontWeight.w400,
                fontSize: 12.0.sp,
              ),
            ),
          ),
          SizedBox(
            height: 5.0.sp,
          ),
          const TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(width: 1, color: greyligColor),
              ),
              hintText: '',
            ),
          ),
          Text(
            "เลข Seal",
            style: GoogleFonts.notoSansThai(
              textStyle: TextStyle(
                color: black,
                fontWeight: FontWeight.w400,
                fontSize: 12.0.sp,
              ),
            ),
          ),
          SizedBox(
            height: 5.0.sp,
          ),
          const TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(width: 1, color: greyligColor),
              ),
              hintText: 'เลข Seal',
            ),
          ),
        ],
      )
    ],
  );
}

Widget bottonView({required BuildContext context}) {
  final TextFormController textFormController = Get.find();
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "สถานะ Seal",
        style: GoogleFonts.notoSansThai(
          textStyle: TextStyle(
            color: black,
            fontWeight: FontWeight.w400,
            fontSize: 12.0.sp,
          ),
        ),
      ),
      SizedBox(
        height: 5.0.sp,
      ),
      Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                child: Container(
                  height: 75.0.sp,
                  width: 120.0.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: white,
                    border: Border.all(
                        color: textFormController.checkNomalStatusBotton(),
                        width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        MyIcons.check_circle,
                        size: 22.0.sp,
                        color: textFormController.checkNomalStatusBotton(),
                      ),
                      Text(
                        "ปกติ",
                        style: GoogleFonts.notoSansThai(
                          textStyle: TextStyle(
                            color: textFormController.checkNomalStatusBotton(),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0.sp,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  textFormController.nomalStatus.value = true;
                  textFormController.brokenStatus.value = false;
                },
                //onTap:() => textFormController.nomalStatus = true,
              ),
              InkWell(
                child: Container(
                  height: 75.0.sp,
                  width: 120.0.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: white,
                    border: Border.all(
                        color: textFormController.checkBrokenStatusBotton(),
                        width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        MyIcons.cancel_circle,
                        size: 22.0.sp,
                        color: textFormController.checkBrokenStatusBotton(),
                      ),
                      Text(
                        "ชำรุด",
                        style: GoogleFonts.notoSansThai(
                          textStyle: TextStyle(
                            color: textFormController.checkBrokenStatusBotton(),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.0.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  textFormController.brokenStatus.value = true;
                  textFormController.nomalStatus.value = false;
                },
              )
            ],
          )),
    ],
  );
}

Widget bottonConfirmCar({required BuildContext context,required String labelButton}) {
  return Container(
    padding: EdgeInsets.only(left: 12.0.sp,right: 12.0.sp,bottom: 12.0.sp),
    child: InkWell(
        child: Container(
          height: 35.0.sp,
          width: Get.width-24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: primaryColor
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                labelButton,
                style: GoogleFonts.notoSansThai(
                  textStyle: TextStyle(
                    color: white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          AwesomeDialog(
            context: context,
            animType: AnimType.scale,
            dialogType: DialogType.noHeader,
            body: Center(
              child: Column(
                children: [
                  Icon(
                    MyIcons.check_circle,
                    size: 50.0.sp,
                    color: greenDark,
                  ),
                  Text(
                    '$labelButton สำเร็จ',
                    style: GoogleFonts.notoSansThai(
                      textStyle: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0.sp,
                  ),
                  Text(
                    "รถทะเบียน : กร 681",
                    style: GoogleFonts.notoSansThai(
                      textStyle: TextStyle(
                        color: grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0.sp,
                      ),
                    ),
                  ),
                  Text(
                    "ทำการเข้าโรงงานสำเร็จ",
                    style: GoogleFonts.notoSansThai(
                      textStyle: TextStyle(
                        color: grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0.sp,
                  ),
                ],
              )
              ),
            //btnOkOnPress: () {},
            ).show();
        },
      ),
  );
  // return Center(
  //     child: InkWell(
  //   splashColor: Colors.blue,
  //   borderRadius: BorderRadius.circular(10.0),
  //   onTap: () => {},
  //   child: Container(
  //     padding: EdgeInsets.all(20.0),
  //     decoration: BoxDecoration(
  //       border: Border.all(width: 1.0, color: Colors.blue),
  //       borderRadius: BorderRadius.circular(10.0),
  //     ),
  //     child: Text(
  //       'Button with InkWell',
  //       style: TextStyle(color: Colors.blue),
  //     ),
  //   ),
  // ));
}
// BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: white,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.shade300,
//                         blurRadius: 5.0,
//                         spreadRadius: 1.0,
//                         offset: Offset(0.0.sp, 0.0.sp),
//                       )
//                     ]),