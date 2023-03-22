import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';

import '../values/colors.dart';

class CarStatusInfo extends StatelessWidget {
  CarStatusInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        centerTitle: true,
        title: Text('สถานะรถ',
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
      body: Center(
        child: Text("CarStatusInfo"),
      ),
    );
  }
}

  Widget carStatusInfo(BuildContext context,String licenseplate) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        centerTitle: true,
        title: Text('$licenseplate',
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
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text("CarStatusInfo"),
      ),
    );
  }