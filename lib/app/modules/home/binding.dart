import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:smart_factory_suit/app/controllers/car_card_controller.dart';
import 'package:smart_factory_suit/app/controllers/confirm_car_controller.dart';
import 'package:smart_factory_suit/app/controllers/home_page_controller.dart';
import 'package:smart_factory_suit/app/controllers/text_form_controller.dart';
import 'controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TextFormController());
    Get.put(ConfirmCarController());
    Get.lazyPut(() => CarCardController());
    Get.lazyPut(() => HomePageController());
    Get.lazyPut(() => HomeController());

  }
}