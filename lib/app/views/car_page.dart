import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';
import '../controllers/car_card_history_controller.dart';
import '../core/utils/car_history_header.dart';
import '../core/values/colors.dart';

class CarPage extends StatelessWidget {
  CarPage({Key? key}) : super(key: key);
  final CarCardHistoryController carCardController = Get.find();

  @override
  Widget build(BuildContext context) {
    //carCardController.addListCar(context: context);
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          boxCarStatus(context: context),
          SizedBox(
            height: 5.0.sp,
          ),
          Expanded(
            child: ListView(
                padding: EdgeInsets.only(top: 5.0.sp),
                children: [
                  carCardHistory(context: context,count: carCardController.carCard.length)
                ],
              ),
          ),
        ],
      )
    );
  }
}
