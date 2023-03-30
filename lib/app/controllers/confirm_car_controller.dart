
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../data/models/car_card_history.dart';
import '../data/models/car_card_model.dart';

class ConfirmCarController extends GetxController {
  var confirmCard = RxList<CarCardModel>().obs();


  void addConfirmCar({required BuildContext context}) {
    confirmCard.assignAll(carCardModelFromJson("[{\"label_plate_no_local\":\"ทะเบียน\",\"label_plate_no_eng\":\"LicensePlate\",\"plate_no\":\"พย111\",\"label_seal_no_local\":\"เลขSeal\",\"label_seal_no_eng\":\"SealNo.\",\"seal_no\":\"CPFTH123123\",\"label_farm_name_local\":\"ชื่อฟาร์ม\",\"label_farm_name_eng\":\"FarmName\",\"farm_name\":\"ถิตบัณฑูรย์\",\"label_round_no_local\":\"เที่ยว\",\"label_round_no_eng\":\"RoundNo.\",\"round_no\":\"1\",\"label_pond_no_local\":\"บ่อ\",\"label_pond_no_eng\":\"PondNo.\",\"pond_no\":\"2\",\"label_status_car_local\":\"รอออกโรงงาน\",\"label_status_car_eng\":\"WaitingOut.\"}]"));
  }
}
