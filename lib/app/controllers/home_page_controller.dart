import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_factory_suit/app/data/models/car_card_model.dart';
import '../data/models/home_page_model.dart';
import '../http/request.dart';

class HomePageController extends GetxController {
  var homePageItem = RxList<HomePageModel>().obs();

  Future<void> getHomePage({required BuildContext context}) async {

    
    try {
      Request request = Request(
        //"https://localhost:7075/GetHomePage/thanakon.vie/G002",
        "https://192.168.41.205:8000/GetHomePage/thanakon.vie/G001",
        {},
      );
      await request.restGet().then((value) async {
        var response = value['response'];
        var statusCode = int.parse(value['status_code'].toString());
        if (statusCode == 200) {
          print('---------------');
          print(response);
          print('---------------');

          //homePageItem.assignAll(carCardModelFromJson(response.toString()));
          homePageItem.assign(homePageModelFromJson(response.toString()));
        } else {
          print(statusCode);
          print('statuscode is not 200');
          throw statusCode.toString() + " " + response["response"].toString();
        }
      });
    } catch (e) {
      throw e;
    }
  }

  Future<void> getHomePageTest() async {
    String path = 'https://192.168.41.205:8000/GetHomePage/thanakon.vie/G001';
    await Dio().get(path).then((value) => print('-----------------------------'));
  }

  void addHomePage() {
    //homePageItem.assign(homePageModelFromJson(response.toString()));
    //homePageItem = homePageModelFromJson("{\"profile_page\":{\"name\":\"รปภ.001\",\"label_position_local\":\"หน้าที่\",\"label_position_eng\":\"Position\",\"position\":\"รปภ.\",\"label_factory_name_local\":\"โรงงาน\",\"label_factory_name_eng\":\"FactoryName\",\"factory_name\":\"กุ้งระโนด\",\"label_top_box_local\":\"รอเข้าโรงงาน\",\"label_top_box_eng\":\"WaitIn\",\"top_box\":\"2\",\"label_botton_box_local\":\"รอออกโรงงาน\",\"label_botton_box_eng\":\"WainOut\",\"botton_box\":\"1\"},\"car_list\":[{\"label_plate_no_local\":\"ทะเบียน\",\"label_plate_no_eng\":\"LicensePlate\",\"plate_no\":\"พย111\",\"label_seal_no_local\":\"เลขSeal\",\"label_seal_no_eng\":\"SealNo.\",\"seal_no\":\"CPFTH123123\",\"label_farm_name_local\":\"ชื่อฟาร์ม\",\"label_farm_name_eng\":\"FarmName\",\"farm_name\":\"ถิตบัณฑูรย์\",\"label_round_no_local\":\"เที่ยว\",\"label_round_no_eng\":\"RoundNo.\",\"round_no\":\"1\",\"label_pond_no_local\":\"บ่อ\",\"label_pond_no_eng\":\"PondNo.\",\"pond_no\":\"2\",\"label_status_car_local\":\"รอออกโรงงาน\",\"label_status_car_eng\":\"WaitingOut.\"},{\"label_plate_no_local\":\"ทะเบียน\",\"label_plate_no_eng\":\"LicensePlate\",\"plate_no\":\"ยว401\",\"label_seal_no_local\":\"เลขSeal\",\"label_seal_no_eng\":\"SealNo.\",\"seal_no\":\"CPFTH123123\",\"label_farm_name_local\":\"ชื่อฟาร์ม\",\"label_farm_name_eng\":\"FarmName\",\"farm_name\":\"ถิตบัณฑูรย์2\",\"label_round_no_local\":\"เที่ยว\",\"label_round_no_eng\":\"RoundNo.\",\"round_no\":\"3\",\"label_pond_no_local\":\"บ่อ\",\"label_pond_no_eng\":\"PondNo.\",\"pond_no\":\"5\",\"label_status_car_local\":\"รอเข้าโรงงาน\",\"label_status_car_eng\":\"WaitingIn.\"},{\"label_plate_no_local\":\"ทะเบียน\",\"label_plate_no_eng\":\"LicensePlate\",\"plate_no\":\"ยว401\",\"label_seal_no_local\":\"เลขSeal\",\"label_seal_no_eng\":\"SealNo.\",\"seal_no\":\"CPFTH123123\",\"label_farm_name_local\":\"ชื่อฟาร์ม\",\"label_farm_name_eng\":\"FarmName\",\"farm_name\":\"ถิตบัณฑูรย์2\",\"label_round_no_local\":\"เที่ยว\",\"label_round_no_eng\":\"RoundNo.\",\"round_no\":\"3\",\"label_pond_no_local\":\"บ่อ\",\"label_pond_no_eng\":\"PondNo.\",\"pond_no\":\"5\",\"label_status_car_local\":\"รอเข้าโรงงาน\",\"label_status_car_eng\":\"WaitingIn.\"}]}");
    //homePageItem.assign(homePageModelFromJson("{\"name\":\"รปภ.001\",\"label_position_local\":\"หน้าที่\",\"label_position_eng\":\"Position\",\"position\":\"รปภ.\",\"label_factory_name_local\":\"โรงงาน\",\"label_factory_name_eng\":\"FactoryName\",\"factory_name\":\"กุ้งระโนด\",\"label_top_box_local\":\"รอเข้าโรงงาน\",\"label_top_box_eng\":\"WaitIn\",\"top_box\":\"1\",\"label_botton_box_local\":\"รอออกโรงงาน\",\"label_botton_box_eng\":\"WainOut\",\"botton_box\":\"4\"}"));
    //"{\"profile_page\":{\"name\":\"รปภ.001\",\"label_position_local\":\"หน้าที่\",\"label_position_eng\":\"Position\",\"position\":\"รปภ.\",\"label_factory_name_local\":\"โรงงาน\",\"label_factory_name_eng\":\"FactoryName\",\"factory_name\":\"กุ้งระโนด\",\"label_top_box_local\":\"รอเข้าโรงงาน\",\"label_top_box_eng\":\"WaitIn\",\"top_box\":\"2\",\"label_botton_box_local\":\"รอออกโรงงาน\",\"label_botton_box_eng\":\"WainOut\",\"botton_box\":\"1\"},\"car_list\":[{\"label_plate_no_local\":\"ทะเบียน\",\"label_plate_no_eng\":\"LicensePlate\",\"plate_no\":\"พย111\",\"label_seal_no_local\":\"เลขSeal\",\"label_seal_no_eng\":\"SealNo.\",\"seal_no\":\"CPFTH123123\",\"label_farm_name_local\":\"ชื่อฟาร์ม\",\"label_farm_name_eng\":\"FarmName\",\"farm_name\":\"ถิตบัณฑูรย์\",\"label_round_no_local\":\"เที่ยว\",\"label_round_no_eng\":\"RoundNo.\",\"round_no\":\"1\",\"label_pond_no_local\":\"บ่อ\",\"label_pond_no_eng\":\"PondNo.\",\"pond_no\":\"2\",\"label_status_car_local\":\"รอออกโรงงาน\",\"label_status_car_eng\":\"WaitingOut.\"},{\"label_plate_no_local\":\"ทะเบียน\",\"label_plate_no_eng\":\"LicensePlate\",\"plate_no\":\"ยว401\",\"label_seal_no_local\":\"เลขSeal\",\"label_seal_no_eng\":\"SealNo.\",\"seal_no\":\"CPFTH123123\",\"label_farm_name_local\":\"ชื่อฟาร์ม\",\"label_farm_name_eng\":\"FarmName\",\"farm_name\":\"ถิตบัณฑูรย์2\",\"label_round_no_local\":\"เที่ยว\",\"label_round_no_eng\":\"RoundNo.\",\"round_no\":\"3\",\"label_pond_no_local\":\"บ่อ\",\"label_pond_no_eng\":\"PondNo.\",\"pond_no\":\"5\",\"label_status_car_local\":\"รอเข้าโรงงาน\",\"label_status_car_eng\":\"WaitingIn.\"},{\"label_plate_no_local\":\"ทะเบียน\",\"label_plate_no_eng\":\"LicensePlate\",\"plate_no\":\"ยว401\",\"label_seal_no_local\":\"เลขSeal\",\"label_seal_no_eng\":\"SealNo.\",\"seal_no\":\"CPFTH123123\",\"label_farm_name_local\":\"ชื่อฟาร์ม\",\"label_farm_name_eng\":\"FarmName\",\"farm_name\":\"ถิตบัณฑูรย์2\",\"label_round_no_local\":\"เที่ยว\",\"label_round_no_eng\":\"RoundNo.\",\"round_no\":\"3\",\"label_pond_no_local\":\"บ่อ\",\"label_pond_no_eng\":\"PondNo.\",\"pond_no\":\"5\",\"label_status_car_local\":\"รอเข้าโรงงาน\",\"label_status_car_eng\":\"WaitingIn.\"}]}"
    //homePageItem.assign();
    //homePageItem.homePageModelFromJson();
    //homePageItem.assign(homePageModelFromJson("{\"pro_file\":{\"name\":\"รปภ.001\",\"label_position_local\":\"หน้าที่\",\"label_position_eng\":\"Position\",\"position\":\"รปภ.\",\"label_factory_name_local\":\"โรงงาน\",\"label_factory_name_eng\":\"FactoryName\",\"factory_name\":\"กุ้งระโนด\",\"label_top_box_local\":\"รอเข้าโรงงาน\",\"label_top_box_eng\":\"WaitIn\",\"top_box\":\"2\",\"label_botton_box_local\":\"รอออกโรงงาน\",\"label_botton_box_eng\":\"WainOut\",\"botton_box\":\"1\"},\"car_list\":[{\"label_plate_no_local\":\"ทะเบียน\",\"label_plate_no_eng\":\"LicensePlate\",\"plate_no\":\"พย111\",\"label_seal_no_local\":\"เลขSeal\",\"label_seal_no_eng\":\"SealNo.\",\"seal_no\":\"CPFTH123123\",\"label_farm_name_local\":\"ชื่อฟาร์ม\",\"label_farm_name_eng\":\"FarmName\",\"farm_name\":\"ถิตบัณฑูรย์\",\"label_round_no_local\":\"เที่ยว\",\"label_round_no_eng\":\"RoundNo.\",\"round_no\":\"1\",\"label_pond_no_local\":\"บ่อ\",\"label_pond_no_eng\":\"PondNo.\",\"pond_no\":\"2\",\"label_status_car_local\":\"รอออกโรงงาน\",\"label_status_car_eng\":\"WaitingOut.\"},{\"label_plate_no_local\":\"ทะเบียน\",\"label_plate_no_eng\":\"LicensePlate\",\"plate_no\":\"ยว401\",\"label_seal_no_local\":\"เลขSeal\",\"label_seal_no_eng\":\"SealNo.\",\"seal_no\":\"CPFTH123123\",\"label_farm_name_local\":\"ชื่อฟาร์ม\",\"label_farm_name_eng\":\"FarmName\",\"farm_name\":\"ถิตบัณฑูรย์2\",\"label_round_no_local\":\"เที่ยว\",\"label_round_no_eng\":\"RoundNo.\",\"round_no\":\"3\",\"label_pond_no_local\":\"บ่อ\",\"label_pond_no_eng\":\"PondNo.\",\"pond_no\":\"5\",\"label_status_car_local\":\"รอเข้าโรงงาน\",\"label_status_car_eng\":\"WaitingIn.\"},{\"label_plate_no_local\":\"ทะเบียน\",\"label_plate_no_eng\":\"LicensePlate\",\"plate_no\":\"ยว401\",\"label_seal_no_local\":\"เลขSeal\",\"label_seal_no_eng\":\"SealNo.\",\"seal_no\":\"CPFTH123123\",\"label_farm_name_local\":\"ชื่อฟาร์ม\",\"label_farm_name_eng\":\"FarmName\",\"farm_name\":\"ถิตบัณฑูรย์2\",\"label_round_no_local\":\"เที่ยว\",\"label_round_no_eng\":\"RoundNo.\",\"round_no\":\"3\",\"label_pond_no_local\":\"บ่อ\",\"label_pond_no_eng\":\"PondNo.\",\"pond_no\":\"5\",\"label_status_car_local\":\"รอเข้าโรงงาน\",\"label_status_car_eng\":\"WaitingIn.\"}]}"));
  }
}
