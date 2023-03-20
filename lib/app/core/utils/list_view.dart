import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';

Widget listBuild({required BuildContext context, required int count}) {
  double height = 20.0.hp;
  if (count == 0) height = 7.0.hp;
  return count == 0
      ? Container(
          height: height,
          child: Material(
            child: ListTile(
              tileColor: Color.fromARGB(255, 241, 243, 244),
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
                      tileColor: const Color.fromARGB(255, 229, 243, 255),
                      leading: const Icon(Icons.local_shipping),
                      title: Text(
                        "List item $index",
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
