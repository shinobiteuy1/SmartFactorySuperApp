import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';
import 'package:smart_factory_suit/app/core/values/colors.dart';
import '../../modules/home/controller.dart';

class HeaderPage extends StatelessWidget {
  HeaderPage({Key? key}) : super(key: key);

  final style = TextStyle(fontSize: 12.0.sp, fontWeight: FontWeight.normal);
  final homeCtrl = Get.find<HomeController>();
  final double topWidgetHeight = 200.0;
  final double avatarRadius = 50.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
                height: 210.0.sp,
                width: Get.width,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                    // ignore: prefer_const_constructors
                    image: DecorationImage(
                  fit: BoxFit.fill,
                  image: const AssetImage('lib/Images/HomepageBG.png'),
                )),
        ),
        SizedBox(
          height: 110,
          width: Get.width,
        )
      ],
    );
    // return Container(
    //   child: Column(
    //     children: [
    //       Container(
    //         height: 210.0.sp,
    //         width: Get.width,
    //         // ignore: prefer_const_constructors
    //         decoration: BoxDecoration(
    //             // ignore: prefer_const_constructors
    //             image: DecorationImage(
    //           fit: BoxFit.fill,
    //           image: const AssetImage('lib/Images/HomepageBG.png'),
    //         )),
    //       ),
    //       Container(
    //         width: Get.width,
    //         color: white,
    //       )
    //     ],
    //   ),
    // );
    // return Stack(
    //     children: [
    //       Column(
    //         children: [
    //           Container(
    //             height: Get.height / 3,
    //             width: Get.width,
    //             // ignore: prefer_const_constructors
    //             decoration: BoxDecoration(
    //                 // ignore: prefer_const_constructors
    //                 image: DecorationImage(
    //               fit: BoxFit.fill,
    //               image: const AssetImage('lib/Images/HomepageBG.png'),
    //             )),
    //           )
    //         ],
    //       )
    //     ],
    //   );
  }
}