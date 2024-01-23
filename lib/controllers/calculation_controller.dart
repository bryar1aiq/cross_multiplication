import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculationController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final leftNumController = TextEditingController();
  final leftDenController = TextEditingController();
  final rightNumController = TextEditingController();
  final rightDenController = TextEditingController();

  // Function to handle getting double input
  getDoubleInput(TextEditingController textEditingController) {
    String inputText = textEditingController.text.trim();

    if (inputText.isNotEmpty && inputText.isNumericOnly) {
      try {
        double inputValue = double.parse(inputText);
        return inputValue;
      } catch (e) {
        print("Invalid input: $inputText");
        return 0.0;
      }
    } else {
      print("Input is empty");
      return inputText;
    }
  }

  var result = 0.0.obs;

  crossMultiplication() {
    var leftNum = getDoubleInput(leftNumController);
    var leftDen = getDoubleInput(leftDenController);
    var rightNum = getDoubleInput(rightNumController);
    var rightDen = getDoubleInput(rightDenController);

    try {
      if (leftNum.runtimeType == String) {
        result.value = (rightNum * leftDen) / rightDen;
      } else if (leftDen.runtimeType == String) {
        result.value = (leftNum * rightDen) / rightNum;
      } else if (rightNum.runtimeType == String) {
        result.value = (leftNum * rightDen) / leftDen;
      } else if (rightDen.runtimeType == String) {
        result.value = (leftDen * rightNum) / leftNum;
      }
      return result.value;
    } catch (e) {
      return Get.snackbar('Input Error',
          'You have to write a letter in only one of the fields, and fill others with numbers.', colorText: Colors.white, backgroundColor: Colors.redAccent.shade700);
    }
  }

  validateLetter(String letter) {
    if (GetUtils.isLengthEqualTo(letter, 1)) {
      return null;
    } else {
      return 'You have to enter only one letter.';
    }
  }
}
