import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_factory_suit/app/data/models/car_card_model.dart';

import '../http/request.dart';

class CarCardController extends GetxController {
  var carCard = RxList<CarCardModel>().obs();

  Future<void> getListCar({required BuildContext context}) async {
    try {
      Request request = Request(
        "https://fakestoreapi.com/products",
        {},
      );
      await request.restGet().then((value) async {
        var response = value['response'];
        var statusCode = int.parse(value['status_code'].toString());
        if (statusCode == 200) {
          print(response);
          carCard.assignAll(carCardModelFromJson(response.toString()));
        } else {
          throw statusCode.toString() + " " + response["response"].toString();
        }
      });
    } catch (e) {
      throw e;
    }
  }

  void addListCar({required BuildContext context}) {
    carCard.assignAll(carCardModelFromJson("[{\"label_plate_no_local\":\"ทะเบียน\",\"label_plate_no_eng\":\"LicensePlate\",\"plate_no\":\"พย111\",\"label_seal_no_local\":\"เลข Seal\",\"label_seal_no_eng\":\"SealNo.\",\"seal_no\":\"CPFTH123123\",\"label_farm_name_local\":\"ชื่อฟาร์ม\",\"label_farm_name_eng\":\"FarmName\",\"farm_name\":\"ถิตบัณฑูรย์\",\"label_round_no_local\":\"เที่ยว\",\"label_round_no_eng\":\"RoundNo.\",\"round_no\":\"1\",\"label_pond_no_local\":\"บ่อ\",\"label_pond_no_eng\":\"PondNo.\",\"pond_no\":\"2\",\"label_status_car_local\":\"รอออกโรงงาน\",\"label_status_car_eng\":\"WaitingOut.\"},{\"label_plate_no_local\":\"ทะเบียน\",\"label_plate_no_eng\":\"LicensePlate\",\"plate_no\":\"ยว401\",\"label_seal_no_local\":\"เลข Seal\",\"label_seal_no_eng\":\"SealNo.\",\"seal_no\":\"CPFTH123123\",\"label_farm_name_local\":\"ชื่อฟาร์ม\",\"label_farm_name_eng\":\"FarmName\",\"farm_name\":\"ถิตบัณฑูรย์2\",\"label_round_no_local\":\"เที่ยว\",\"label_round_no_eng\":\"RoundNo.\",\"round_no\":\"3\",\"label_pond_no_local\":\"บ่อ\",\"label_pond_no_eng\":\"PondNo.\",\"pond_no\":\"5\",\"label_status_car_local\":\"รอเข้าโรงงาน\",\"label_status_car_eng\":\"WaitingIn.\"},{\"label_plate_no_local\":\"ทะเบียน\",\"label_plate_no_eng\":\"LicensePlate\",\"plate_no\":\"พย111\",\"label_seal_no_local\":\"เลข Seal\",\"label_seal_no_eng\":\"SealNo.\",\"seal_no\":\"CPFTH123123\",\"label_farm_name_local\":\"ชื่อฟาร์ม\",\"label_farm_name_eng\":\"FarmName\",\"farm_name\":\"ถิตบัณฑูรย์\",\"label_round_no_local\":\"เที่ยว\",\"label_round_no_eng\":\"RoundNo.\",\"round_no\":\"1\",\"label_pond_no_local\":\"บ่อ\",\"label_pond_no_eng\":\"PondNo.\",\"pond_no\":\"2\",\"label_status_car_local\":\"รอออกโรงงาน\",\"label_status_car_eng\":\"WaitingOut.\"},{\"label_plate_no_local\":\"ทะเบียน\",\"label_plate_no_eng\":\"LicensePlate\",\"plate_no\":\"พย111\",\"label_seal_no_local\":\"เลข Seal\",\"label_seal_no_eng\":\"SealNo.\",\"seal_no\":\"CPFTH123123\",\"label_farm_name_local\":\"ชื่อฟาร์ม\",\"label_farm_name_eng\":\"FarmName\",\"farm_name\":\"ถิตบัณฑูรย์\",\"label_round_no_local\":\"เที่ยว\",\"label_round_no_eng\":\"RoundNo.\",\"round_no\":\"1\",\"label_pond_no_local\":\"บ่อ\",\"label_pond_no_eng\":\"PondNo.\",\"pond_no\":\"2\",\"label_status_car_local\":\"รอออกโรงงาน\",\"label_status_car_eng\":\"WaitingOut.\"},{\"label_plate_no_local\":\"ทะเบียน\",\"label_plate_no_eng\":\"LicensePlate\",\"plate_no\":\"พย111\",\"label_seal_no_local\":\"เลข Seal\",\"label_seal_no_eng\":\"SealNo.\",\"seal_no\":\"CPFTH123123\",\"label_farm_name_local\":\"ชื่อฟาร์ม\",\"label_farm_name_eng\":\"FarmName\",\"farm_name\":\"ถิตบัณฑูรย์\",\"label_round_no_local\":\"เที่ยว\",\"label_round_no_eng\":\"RoundNo.\",\"round_no\":\"1\",\"label_pond_no_local\":\"บ่อ\",\"label_pond_no_eng\":\"PondNo.\",\"pond_no\":\"2\",\"label_status_car_local\":\"รอออกโรงงาน\",\"label_status_car_eng\":\"WaitingOut.\"}]"));
  }
}
