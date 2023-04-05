
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';
import '../../Images/Icons/my_icons_icons.dart';
import '../core/values/colors.dart';
import '../modules/home/controller.dart';

class User extends StatelessWidget {
  User({Key? key}) : super(key: key);
  final homeCtrl = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        centerTitle: true,
        title: Text('บัญชีผู้ใช้งาน',
          style: GoogleFonts.notoSansThai(
            textStyle: TextStyle(
              color: black,
              fontSize: 14.0.sp,
              fontWeight: FontWeight.w600,
            ),
          )
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: grey,
          ),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 12.0.sp,right: 12.0.sp),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 80.0.sp,
                    width: 80.0.sp,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('lib/Images/user-profile.png')
                      )
                    ),
                  ),
                  Positioned(
                    bottom: 0.0.sp,
                    right: 0.0.sp,
                    child: Container(
                      height: 27.0.sp,
                      width: 27.0.sp,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: primaryColor
                      ),
                      child: const Icon(
                        Icons.photo_camera_outlined,
                        color: white,  
                      ),
                    )
                  )
                ],
              )
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 12.0.sp),
              width: Get.width,
              child: Text('ข้อมูลบัญชีผู้ใช้',
                style: GoogleFonts.notoSansThai(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: 16.0.sp,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10.0,
                        spreadRadius: 5.0,
                        offset: Offset(0.0.sp, 0.0.sp),
                      )
                    ]),
                width: Get.width, // - 32.0.sp,
                height: 180.0.sp,
                child: Container(
                  //margin: EdgeInsets.only(left: 8.0.sp,right: 8.0.sp),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: Get.width,
                          child: Row(
                            children: [
                            Expanded(
                              flex: 2,
                              child: Icon(
                                MyIcons.user,
                                color: black,
                                size: 12.0.sp,
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Text('ชื่อบัญชี',
                              style: GoogleFonts.notoSansThai(
                                textStyle: TextStyle(
                                  color: black,
                                  fontSize: 11.0.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                margin: EdgeInsets.only(right: 8.0.sp),
                                alignment: Alignment.centerRight,
                                child: Text('รปภ.001',
                                  style: GoogleFonts.notoSansThai(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: 10.0.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ),
                              ),
                            ),
                            ],
                          ),
                        )
                      ),
                      const Divider(
                        color: black,
                        height: 2,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: Get.width,
                          child: Row(
                            children: [
                            Expanded(
                              flex: 2,
                              child: Icon(
                                Icons.email_outlined,
                                color: black,
                                size: 12.0.sp,
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Text('email'.tr,
                              style: GoogleFonts.notoSansThai(
                                textStyle: TextStyle(
                                  color: black,
                                  fontSize: 11.0.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                margin: EdgeInsets.only(right: 8.0.sp),
                                alignment: Alignment.centerRight,
                                child: Text('security001@RNG.com',
                                  style: GoogleFonts.notoSansThai(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: 10.0.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ),
                              ),
                            ),
                            ],
                          ),
                        )
                      ),
                      const Divider(
                        color: black,
                        height: 2,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: Get.width,
                          child: Row(
                            children: [
                            Expanded(
                              flex: 2,
                              child: Icon(
                                MyIcons.factory_icon,
                                color: black,
                                size: 12.0.sp,
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Text('โรงงาน',
                              style: GoogleFonts.notoSansThai(
                                textStyle: TextStyle(
                                  color: black,
                                  fontSize: 11.0.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                margin: EdgeInsets.only(right: 8.0.sp),
                                alignment: Alignment.centerRight,
                                child: Text('โรงงานกุ้งระโนด',
                                  style: GoogleFonts.notoSansThai(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: 10.0.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ),
                              ),
                            ),
                            ],
                          ),
                        )
                      ),
                      const Divider(
                        color: black,
                        height: 2,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: Get.width,
                          child: Row(
                            children: [
                            Expanded(
                              flex: 2,
                              child: Icon(
                                Icons.people_alt_outlined,
                                color: black,
                                size: 12.0.sp,
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Text('หน้าที่',
                              style: GoogleFonts.notoSansThai(
                                textStyle: TextStyle(
                                  color: black,
                                  fontSize: 11.0.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                margin: EdgeInsets.only(right: 8.0.sp),
                                alignment: Alignment.centerRight,
                                child: Text('รปภ',
                                  style: GoogleFonts.notoSansThai(
                                    textStyle: TextStyle(
                                      color: black,
                                      fontSize: 10.0.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ),
                              ),
                            ),
                            ],
                          ),
                        )
                      )
                    ],
                  ),
                )
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 10.0,
                        spreadRadius: 5.0,
                        offset: Offset(0.0.sp, 0.0.sp),
                      )
                    ]),
                width: Get.width, // - 32.0.sp,
                height: 40.0.sp,
                //child: TextFont('ออกจากระบบ'),
                child: Text('ออกจากระบบ',
                  style: GoogleFonts.notoSansThai(
                    textStyle: TextStyle(
                      color: white,
                      fontSize: 12.0.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ),
              ),
          ],
        ),
      )
    );
  }
}