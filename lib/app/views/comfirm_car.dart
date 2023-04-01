import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';
import 'package:smart_factory_suit/app/views/qr_code.dart';
import '../controllers/confirm_car_controller.dart';
import '../core/utils/list_view.dart';
import '../core/utils/text_form.dart';
import '../core/values/colors.dart';

class ConfirmCar extends StatelessWidget {
  ConfirmCar({Key? key}) : super(key: key);
  final ConfirmCarController confirmCarController = Get.find();

  @override
  Widget build(BuildContext context) {
    String pageHeader = Get.arguments['label_page_header'];
    String factoryName = Get.arguments['factory_name'];

    confirmCarController.addConfirmCar(context: context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: white,
        centerTitle: true,
        title: Column(
          children: [
            SizedBox(
              height: 20.0.sp,
            ),
            Text(pageHeader,
              style: GoogleFonts.notoSansThai(
                textStyle: TextStyle(
                  color: black,
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w600,
                ),
              )
            ),
            Text(factoryName,
              style: GoogleFonts.notoSansThai(
                textStyle: TextStyle(
                  color: black,
                  fontSize: 11.0.sp,
                  fontWeight: FontWeight.w300,
                ),
              )
            ),
            SizedBox(
              height: 15.0.sp,
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: grey,
          ),
          onPressed: () {
            Get.off(const QRCode());
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 12.0.sp, right: 12.0.sp,top: 12.0.sp),
        child: Column(
          children: [
            Container(
              child: confirmCard(context: context, list: confirmCarController.confirmCard)
            ),
            textFormView(context: context),
            SizedBox(
              height: 10.0.sp,
            ),
            bottonView(context: context)
          ],
        ),
      )
    );
  }
}