import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';

import '../values/colors.dart';

class FooterBar extends StatelessWidget {
  FooterBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                width: Get.width,
                height: 50,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'สวัสดี  ',
                              style: GoogleFonts.notoSansThai(
                                textStyle: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24.0.sp,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: 'รปภ.001',
                              style: GoogleFonts.notoSansThai(
                                textStyle: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20.0.sp,
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: '27 ก.พ. 2566',
                            style: GoogleFonts.notoSansThai(
                              textStyle: TextStyle(
                                color: grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 10.0.sp,
                              ),
                            ),
                          ),
                        ])),
                      ),
                    )
                  ],
                ),
              );
  }
}