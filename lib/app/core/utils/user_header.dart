import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';

import '../../../Images/Icons/my_icons_icons.dart';
import '../values/colors.dart';

Widget boxUserStatus(
    {required BuildContext context,
    required String name,
    required String positionName,
    required String labelPositionName,
    required String factoryName,
    required String labelFactoryName
    }) {
  return Positioned(
    left: 16,
    right: 16,
    //top: Get.height / 22,
    top: 20.0.sp,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        children: [
          CircleAvatar(
            radius: Get.width / 12,
            backgroundImage: const AssetImage('lib/Images/user-profile.png'),
          ),
          SizedBox(
            width: 15.0.sp,
          ),
          //const ListTile(title: Text('test'),),
          Wrap(
            direction: Axis.vertical,
            spacing: 15,
            runSpacing: 1,
            children: [
              Text(name,
                  style: GoogleFonts.notoSansThai(
                    textStyle: TextStyle(
                      color: white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0.sp,
                    ),
                  )),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        MyIcons.user,
                        color: white,
                        size: 12.0.sp,
                      ),
                      SizedBox(
                        width: 5.0.sp,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: '$labelPositionName  ',
                            style: GoogleFonts.notoSansThai(
                              textStyle: TextStyle(
                                color: white,
                                fontSize: 11.0.sp,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: positionName,
                            style: GoogleFonts.notoSansThai(
                              textStyle: TextStyle(
                                color: white,
                                fontSize: 11.0.sp,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10.0.sp,
                      ),
                      Icon(
                        MyIcons.factory_icon,
                        color: white,
                        size: 12.0.sp,
                      ),
                      SizedBox(
                        width: 5.0.sp,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: '$labelFactoryName  ',
                            style: GoogleFonts.notoSansThai(
                              textStyle: TextStyle(
                                color: white,
                                fontSize: 11.0.sp,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: factoryName,
                            style: GoogleFonts.notoSansThai(
                              textStyle: TextStyle(
                                color: white,
                                fontSize: 11.0.sp,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}
//Widget listCarStatusBuild({required BuildContext context, required int count}) {

class UserHeader extends StatelessWidget {
  UserHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16,
      right: 16,
      top: Get.height / 22,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Row(
          children: [
            CircleAvatar(
              radius: Get.width / 12,
              backgroundImage: const AssetImage('lib/Images/user-profile.png'),
            ),
            SizedBox(
              width: 15.0.sp,
            ),
            //const ListTile(title: Text('test'),),
            Wrap(
              direction: Axis.vertical,
              spacing: 15,
              runSpacing: 1,
              children: [
                Text('รปภ. 001',
                    style: GoogleFonts.notoSansThai(
                      textStyle: TextStyle(
                        color: white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0.sp,
                      ),
                    )),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          MyIcons.user,
                          color: white,
                          size: 12.0.sp,
                        ),
                        SizedBox(
                          width: 5.0.sp,
                        ),
                        Text('หน้าที่ : รปภ.',
                            style: GoogleFonts.notoSansThai(
                              textStyle: TextStyle(
                                color: white,
                                fontSize: 11.0.sp,
                              ),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10.0.sp,
                        ),
                        Icon(
                          MyIcons.factory_icon,
                          color: white,
                          size: 12.0.sp,
                        ),
                        SizedBox(
                          width: 5.0.sp,
                        ),
                        Text('โรงงาน : กุ้งระโนด',
                            style: GoogleFonts.notoSansThai(
                              textStyle: TextStyle(
                                color: white,
                                fontSize: 11.0.sp,
                              ),
                            )),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
