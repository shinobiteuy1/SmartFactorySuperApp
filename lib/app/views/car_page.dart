import 'package:flutter/material.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';
import '../core/utils/car_history_header.dart';
import '../core/values/colors.dart';

class CarPage extends StatelessWidget {
  const CarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          boxCarStatus(context: context),
          SizedBox(
            height: 5.0.sp,
          ),
          carCardHistory(context: context,count: 0)
        ],
      )
    );
  }
}
