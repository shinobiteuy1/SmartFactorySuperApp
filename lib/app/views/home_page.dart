import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_factory_suit/app/controllers/home_page_controller.dart';
import 'package:smart_factory_suit/app/core/utils/extensions.dart';
import 'package:smart_factory_suit/app/data/models/car_card_model.dart';
import '../controllers/car_card_controller.dart';
import '../core/utils/car_status.dart';
import '../core/utils/footer_bar.dart';
import '../core/utils/header_page.dart';
import '../core/utils/list_view.dart';
import '../core/utils/user_header.dart';
import '../modules/home/controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final homeCtrl = Get.find<HomeController>();
  final CarCardController carCardController = Get.find();
  final HomePageController homePageController = Get.find();


  //carCardController.carCard.assign(item);
  //carCardController.
  //var items = new <CarCardModel>();
  //items.assign();

  @override
  Widget build(BuildContext context) {
    //carCardController.getListCar(context: context);
    // carCardController.addListCar();
    // homePageController.addHomePage();
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              HeaderPage(),
              boxUserStatus(context: context,
                            name: homePageController.homePageItem[0].name.toString(),
                            positionName: homePageController.homePageItem[0].position.toString(),
                            labelPositionName: homePageController.homePageItem[0].labelPositionLocal.toString(),
                            factoryName: homePageController.homePageItem[0].factoryName.toString() ,
                            labelFactoryName: homePageController.homePageItem[0].labelFactoryNameLocal.toString()),

              boxCarStatus( context: context,
                            labelTopBox: homePageController.homePageItem[0].labelTopBoxLocal.toString(),
                            dataTopBox: homePageController.homePageItem[0].topBox.toString(),
                            labelBottomBox: homePageController.homePageItem[0].labelBottonBoxLocal.toString(),
                            dataBottomBox: homePageController.homePageItem[0].bottonBox.toString())
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 12.0.sp,right: 12.0.sp,top: 5.0.sp),
            child: headerListCard(context: context,numberOfList: carCardController.carCard.length)
          ),
          Expanded(
            child: ListView(
                padding: EdgeInsets.only(top: 5.0.sp),
                children: [
                  listCarStatusBuild(context: context,list: carCardController.carCard)
                ],
              ),
          ),
        ],
      ),
    );
  }
}
