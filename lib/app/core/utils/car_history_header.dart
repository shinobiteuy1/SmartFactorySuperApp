import 'dart:math';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';
import 'package:smart_factory_suit/app/core/values/colors.dart';

import '../../../Images/Icons/my_icons_icons.dart';
import '../../controllers/car_card_history_controller.dart';

Widget boxCarStatus({required BuildContext context,}){
  final CarCardHistoryController carCardController = Get.find();
  return Container(
    decoration: BoxDecoration(
      //borderRadius: BorderRadius.circular(15),
      color: white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          blurRadius: 5.0.sp,
          spreadRadius: 0.0.sp,
          offset: Offset(0.0.sp, 3.0.sp),
        )
      ]
    ),
    height: 110.0.sp,
    width: Get.width,
    child: Column(
      children: [
        Container(
          height: 60.0.sp,
          alignment: Alignment.bottomCenter,
          //padding: EdgeInsets.only(bottom: 10.0.sp),
          child: Text('ประวัติรถ',
            style: GoogleFonts.notoSansThai(
              textStyle: TextStyle(
                color: black,
                fontWeight: FontWeight.w500,
                fontSize: 16.0.sp,
              ),
            )
          ),
        ),
        Container(
          height: 50.0.sp,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10.0.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: greyligColor,
                    width: 0.5.sp,
                  ),
                  color: white,
                ),
                height: 30.0.sp,
                width: 130.0.sp,
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.search,
                      color: greyligColor,
                      size: 20,
                    ),
                    hintText: 'ทะเบียนรถ',
                    border: InputBorder.none
                  ),
                  validator: (String? value) {
                    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                  },
                  onFieldSubmitted: (value) {
                    carCardController.addListCar(context: context);
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.info,
                      animType: AnimType.rightSlide,
                      title: value,
                      desc: 'เลข Seal : CPFTH123456',
                    ).show();
                  },
                ),
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: greyligColor,
                      width: 0.5.sp,
                    ),
                    color: white,
                  ),
                  height: 30.0.sp,
                  width: 130.0.sp,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15.0.sp,
                      ),
                      const Icon(
                        Icons.calendar_today_outlined,
                        color: greyligColor,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10.0.sp,
                      ),
                      Text('วันที่',
                        style: GoogleFonts.notoSansThai(
                          textStyle: TextStyle(
                            color: greyligColor,
                            fontSize: 12.0.sp,
                          ),
                        )
                      ),
                    ],
                  ),
                ),
                onTap: () async {
                  DateTime? selectedDate = await showDatePicker(
                    context: context, 
                    initialDate: DateTime.now(), 
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100)
                  );
                  final DateFormat formatter = DateFormat('yyyy-MM-dd');
                  var date = formatter.format(selectedDate!);
                  
                  print(selectedDate);
                },
              ),
              // Container(
              //   padding: EdgeInsets.only(left: 10.0.sp),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     border: Border.all(
              //       color: greyligColor,
              //       width: 0.5.sp,
              //     ),
              //     color: white,
              //   ),
              //   height: 30.0.sp,
              //   width: 130.0.sp,
              //   child: TextFormField(
              //     decoration: const InputDecoration(
              //       icon: Icon(
              //         Icons.calendar_today_outlined,
              //         color: greyligColor,
              //         size: 20,
              //       ),
              //       hintText: 'วันที่',
              //       border: InputBorder.none
              //     ),
              //     validator: (String? value) {
              //       return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              //     },
              //     onFieldSubmitted: (value) {
                    
              //     },
              //   ),
              // ),
              // InkWell(
              //   child: Container(
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       border: Border.all(
              //         color: greyligColor,
              //         width: 0.5.sp,
              //       ),
              //       color: white,
              //     ),
              //     height: 30.0.sp,
              //     width: 130.0.sp,
              //     child: Row(
              //       children: [
              //         SizedBox(
              //           width: 15.0.sp,
              //         ),
              //         const Icon(
              //           Icons.search,
              //           color: greyligColor,
              //           size: 20,
              //         ),
              //         SizedBox(
              //           width: 10.0.sp,
              //         ),
              //         Text('ทะเบียนรถ',
              //           style: GoogleFonts.notoSansThai(
              //             textStyle: TextStyle(
              //               color: greyligColor,
              //               fontSize: 12.0.sp,
              //             ),
              //           )
              //         ),
              //       ],
              //     ),
              //   ),
              //   onTap: () {
                  
              //   },
              // ),
              // InkWell(
              //   child: Container(
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       border: Border.all(
              //         color: greyligColor,
              //         width: 0.5.sp,
              //       ),
              //       color: white,
              //     ),
              //     height: 30.0.sp,
              //     width: 130.0.sp,
              //     child: Row(
              //       children: [
              //         SizedBox(
              //           width: 15.0.sp,
              //         ),
              //         const Icon(
              //           Icons.calendar_today_outlined,
              //           color: greyligColor,
              //           size: 20,
              //         ),
              //         SizedBox(
              //           width: 10.0.sp,
              //         ),
              //         Text('วันที่',
              //           style: GoogleFonts.notoSansThai(
              //             textStyle: TextStyle(
              //               color: greyligColor,
              //               fontSize: 12.0.sp,
              //             ),
              //           )
              //         ),
              //       ],
              //     ),
              //   ),
              //   onTap: () {
                  
              //   },
              // ),
            ],
          )
        ),
        // Container(
        //   decoration: const BoxDecoration(
        //     boxShadow: [
        //       BoxShadow(
        //         color: greyligColor,
        //         spreadRadius: 1,
        //         blurRadius: 5,
        //         offset: Offset(3, 0), // changes position of shadow
        //       ),
        //     ],
        //   ),
        // )
      ],
    ),
  );
}


Widget carCardHistory({required BuildContext context, required int count}){
return count == 0
  ? Container(
      height: 300.0.sp,
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('ยังไม่มีรายการค้นหา',
            style: GoogleFonts.notoSansThai(
              textStyle: TextStyle(
                color: greyligColor,
                fontSize: 18.0.sp,
              ),
            )
          ),
          Text('กรุณาใส่ทะเบียนรถ หรือ วันที่',
            style: GoogleFonts.notoSansThai(
              textStyle: TextStyle(
                color: greyligColor,
                fontSize: 18.0.sp,
              ),
            )
          ),
          SizedBox(
            height: 20.0.sp,
          ),
          SvgPicture.asset(
            'lib/Images/Truck.svg',
            fit: BoxFit.contain,
          ),
        ],
      ),
    )
  : Material(
          child: ListView.builder(
              padding: EdgeInsets.only(bottom: 20.0.sp),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: count,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.only(left: 12.0.sp, right: 12.0.sp),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 5.0,
                                spreadRadius: 1.0,
                                offset: Offset(0.0.sp, 0.0.sp),
                              )
                            ]),
                        child: ListTile(
                            onTap: () {
                            },
                            minLeadingWidth: 20,
                            tileColor: white,
                            leading: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: primaryColorlight,
                                ),
                                child: const Icon(
                                  MyIcons.deliver_food,
                                  color: primaryColor,
                                  size: 20,
                                )), //const Icon(MyIcons.deliver_food,color: primaryColor,),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text:
                                            'license_plate '.tr,
                                        style: GoogleFonts.notoSansThai(
                                          textStyle: TextStyle(
                                            color: grey,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12.0.sp,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '${index}',
                                        style: GoogleFonts.notoSansThai(
                                          textStyle: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12.0.sp,
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                                Container(
                                  child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text:
                                            'seal_no '.tr,
                                        style: GoogleFonts.notoSansThai(
                                          textStyle: TextStyle(
                                            color: grey,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12.0.sp,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '${index}',
                                        style: GoogleFonts.notoSansThai(
                                          textStyle: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10.0.sp,
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                                Container(
                                  child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text:
                                            'farm_name '.tr,
                                        style: GoogleFonts.notoSansThai(
                                          textStyle: TextStyle(
                                            color: grey,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12.0.sp,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '${index}',
                                        style: GoogleFonts.notoSansThai(
                                          textStyle: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10.0.sp,
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            trailing: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text:
                                            'round_no '.tr,
                                        style: GoogleFonts.notoSansThai(
                                          textStyle: TextStyle(
                                            color: grey,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12.0.sp,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '${index}',
                                        style: GoogleFonts.notoSansThai(
                                          textStyle: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10.0.sp,
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                                Container(
                                  child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text:
                                            'pond_no '.tr,
                                        style: GoogleFonts.notoSansThai(
                                          textStyle: TextStyle(
                                            color: grey,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12.0.sp,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '${index}',
                                        style: GoogleFonts.notoSansThai(
                                          textStyle: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10.0.sp,
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ],
                            )),
                      ),
                      const SizedBox(height: 13),
                    ],
                  ),
                );
              }),
        );
// double height = 20.0.hp;
//   if (count == 0) height = height;
//   return count == 0
//       ? SizedBox(
//           height: height,
//           child: Material(
//             child: Container(
//               color: green,
//               width: Get.width,
//             )
//         )
//       )
//       : Material(
//           child: ListView.builder(
//               padding: EdgeInsets.zero,
//               physics: const NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               itemCount: count,
//               itemBuilder: (BuildContext context, int index) {
//                 return Column(
//                   children: [
//                     ListTile(
//                       minLeadingWidth: 20,
//                       tileColor: primaryColorlight,
//                       leading: const Icon(
//                         MyIcons.deliver_food,
//                         color: primaryColor,
//                       ),
//                       title: Text(
//                         "ทะเบียน : $index",
//                         style: GoogleFonts.notoSansThai(
//                           textStyle: TextStyle(
//                             fontWeight: FontWeight.w300,
//                             fontSize: 12.0.sp,
//                           ),
//                         ),
//                       ),
//                       // ignore: prefer_const_constructors
//                       subtitle: Text(
//                         "เลข Seal : CPFTH123456",
//                         style: GoogleFonts.notoSansThai(
//                           textStyle: TextStyle(
//                             fontWeight: FontWeight.w300,
//                             fontSize: 12.0.sp,
//                           ),
//                         ),
//                       ),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                   ],
//                 );
//               }),
//         );
}