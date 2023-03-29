import 'package:get/get.dart';
import 'package:smart_factory_suit/app/controllers/home_page_controller.dart';

import '../../controllers/car_card_controller.dart';
import 'controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CarCardController());
    Get.lazyPut(() => HomePageController());
  }
}