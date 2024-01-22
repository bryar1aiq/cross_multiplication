import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculationController extends GetxController{
  final formKey = GlobalKey<FormState>();
  var leftNum = TextEditingController();
  var leftDen = TextEditingController();
  var rightNum = TextEditingController();
  var rightDen = TextEditingController();

  Rx<double> result = 0.0.obs;

  validateLetter(String letter){
    if(GetUtils.isLengthEqualTo(letter, 1)){
      return null;
    } else {
      return 'You have to enter only one letter.';
    }
  }
}