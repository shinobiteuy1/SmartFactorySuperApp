import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';
import '../core/utils/list_view.dart';
import '../core/values/colors.dart';

class CarPage extends StatelessWidget {
  const CarPage({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                listCarStatusBuild(context: context, count: 10),
              ],
            )
          )
        ],
      )
    );
  }
}
