import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';
import '../../../Images/Icons/my_icons_icons.dart';
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

Widget listCarStatusBuild({required BuildContext context, required int count}) {
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
                          //leading: const Icon(MyIcons.deliver_food,color: primaryColor,),
                          leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: primaryColorlight,
                              ),
                              // ignore: prefer_const_constructors
                              // child: Center(
                              //   child: const Icon(MyIcons.deliver_food,color: primaryColor,size: 10,),
                              // ),
                              child: const Icon(
                                MyIcons.deliver_food,
                                color: primaryColor,
                                size: 20,
                              )), //const Icon(MyIcons.deliver_food,color: primaryColor,),
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
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "เลข Seal : CPFTH123456",
                                style: GoogleFonts.notoSansThai(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12.0.sp,
                                  ),
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
                                height: 5,
                              ),
                              cardStatus(context: context, status: "s")
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 12.0.sp,
                          ),
                        ),
                      ),
                      const SizedBox(height: 13),
                    ],
                  ),
                );
              }),
        );
}

Widget cardStatus({required BuildContext context, required String status}) {
  if (status.toLowerCase() == "w") {
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
                "รอลงคิว",
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
  } else if (status.toLowerCase() == "s") {
    return IntrinsicWidth(
      child: Container(
        height: 20.0.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: greenlight,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0.sp, right: 5.0.sp),
              child: Icon(
                Icons.check_circle,
                size: 12.0.sp,
                color: greendark,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0.sp),
              child: Text(
                "ออกจากโรงงานสำเร็จ",
                style: GoogleFonts.notoSansThai(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 11.0.sp,
                    color: greendark,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  } else {
    return IntrinsicWidth(
      child: Container(
        height: 20.0.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: greenlight,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0.sp, right: 5.0.sp),
              child: Icon(
                Icons.check_circle,
                size: 12.0.sp,
                color: greendark,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0.sp),
              child: Text(
                "ออกจากโรงงานสำเร็จ",
                style: GoogleFonts.notoSansThai(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 11.0.sp,
                    color: greendark,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
