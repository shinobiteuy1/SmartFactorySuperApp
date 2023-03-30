import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_factory_suit/app/core/values/colors.dart';

class TextFormController extends GetxController {
  //var confirmCard = RxList<CarCardModel>().obs();

  var nomalStatus = false.obs;
  var brokenStatus = false.obs;


  Color checkNomalStatusBotton(){
    if(nomalStatus.value == true){
      return primaryColor;
    }
    return grey;
  }

  Color checkBrokenStatusBotton(){
    if(brokenStatus.value == true){
      return primaryColor;
    }
    return grey;
  }
}
