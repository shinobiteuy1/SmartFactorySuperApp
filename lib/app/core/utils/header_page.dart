import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
                child: SvgPicture.asset(
                    'lib/Images/HomepageBG.svg',
                    fit: BoxFit.fill,
                  ),
        ),
        SizedBox(
          height: 110,
          width: Get.width,
        )
      ],
    );
  }
}