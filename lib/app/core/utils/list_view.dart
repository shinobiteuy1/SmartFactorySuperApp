import 'dart:convert';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';
import '../../../Images/Icons/my_icons_icons.dart';
import '../../data/models/car_card_model.dart';
import '../values/colors.dart';
import 'car_status_info.dart';

Widget listBuild({required BuildContext context, required int count}) {
  double height = 20.0.hp;
  if (count == 0) height = 7.0.hp;
  return count == 0
      ? SizedBox(
          height: height,
          child: Material(
            child: ListTile(
              tileColor: const Color.fromARGB(255, 241, 243, 244),
              title: Text(
                "ยังไม่มีรายการ",
                style: GoogleFonts.notoSansThai(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16.0.sp,
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        )
      : Material(
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: count,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    ListTile(
                      minLeadingWidth: 20,
                      tileColor: primaryColorlight,
                      leading: const Icon(
                        MyIcons.deliver_food,
                        color: primaryColor,
                      ),
                      title: Text(
                        "ทะเบียน : $index",
                        style: GoogleFonts.notoSansThai(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12.0.sp,
                          ),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      subtitle: Text(
                        "เลข Seal : CPFTH123456",
                        style: GoogleFonts.notoSansThai(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12.0.sp,
                          ),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                );
              }),
        );
}
// CardCar(){
//   string PlateNo {get; set;}
//   string PlateNo {get; set;}
//   string PlateNo {get; set;}
//   string PlateNo {get; set;}
// }

Widget listCarStatusBuild({required BuildContext context, required RxList<CarCardModel> list}) {
  double height = 20.0.hp;
  print(jsonEncode(list));
  if (list.isEmpty) height = 7.0.hp;
  return Obx(
        () => list.isEmpty
      ? SizedBox(
          height: height,
          child: Material(
            child: ListTile(
              tileColor: const Color.fromARGB(255, 241, 243, 244),
              title: Text(
                "ยังไม่มีรายการ",
                style: GoogleFonts.notoSansThai(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16.0.sp,
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        )
      : Material(
          child: ListView.builder(
              padding: EdgeInsets.only(bottom: 20.0.sp),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
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
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.info,
                              animType: AnimType.rightSlide,
                              title: 'ทะเบียนรถ : $index',
                              desc: 'เลข Seal : CPFTH123456',
                              btnCancelOnPress: () {},
                              btnOkOnPress: () {
                                //Get.to(carStatusInfo(context,"ทะเบียนรถ : $index"));
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => carStatusInfo(
                                          context, "ทะเบียนรถ : $index")),
                                );
                              },
                            ).show();
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
                                      text: '${list[index].labelPlateNoLocal}  ',
                                      style: GoogleFonts.notoSansThai(
                                        textStyle: TextStyle(
                                          color: grey,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0.sp,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '${list[index].plateNo}',
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
                                      text: '${list[index].labelSealNoLocal}  ',
                                      style: GoogleFonts.notoSansThai(
                                        textStyle: TextStyle(
                                          color: grey,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0.sp,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '${list[index].sealNo}',
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
                                      text: '${list[index].labelFarmNameLocal}  ',
                                      style: GoogleFonts.notoSansThai(
                                        textStyle: TextStyle(
                                          color: grey,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0.sp,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '${list[index].farmName}',
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
                              const Divider(
                                color: black,
                                height: 2,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: cardStatus(context: context, label: '${list[index].labelStatusCarLocal}'),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12.0.sp,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
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
                                      text: '${list[index].labelRoundNoLocal}  ',
                                      style: GoogleFonts.notoSansThai(
                                        textStyle: TextStyle(
                                          color: grey,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0.sp,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '${list[index].roundNo}',
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
                                      text: '${list[index].labelPondNoLocal}  ',
                                      style: GoogleFonts.notoSansThai(
                                        textStyle: TextStyle(
                                          color: grey,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0.sp,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '${list[index].pondNo}',
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
                          )
                        ),
                      ),
                      const SizedBox(height: 13),
                    ],
                  ),
                );
              }),
        )
  );
}

Widget cardStatus({required BuildContext context, required String label}) {
    return IntrinsicWidth(
    child: Container(
      height: 20.0.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: orangelight,
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0.sp, right: 5.0.sp),
            child: Icon(
              Icons.remove_circle,
              size: 12.0.sp,
              color: orangedark,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0.sp),
            child: Text(
              label,
              style: GoogleFonts.notoSansThai(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11.0.sp,
                  color: orangedark,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
