import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class EvaluateGroupsController extends GetxController {
  void setSelectedButton(var newSelectedButton);
  List<Color> buttonColorAndTextColor();
  Color buttonColorProperty(int index);
  void goToEvaluateAbstractsPart2(var group);
  void goToEvaluateMyGroupsPart2(var group);
}

class EvaluateGroupsControllerImp extends EvaluateGroupsController {
  var evaluteGroupsSelectedButton = 0;

  @override
  void setSelectedButton(newSelectedButton) {
    evaluteGroupsSelectedButton = newSelectedButton;
    update();
  }

  @override
  List<Color> buttonColorAndTextColor() {
    List<Color> colorsList = [];
    if (evaluteGroupsSelectedButton == 0) {
      colorsList.add(Colors.blue);
      colorsList.add(Colors.white);
      colorsList.add(Colors.white);
      colorsList.add(Colors.black);
    }
    if (evaluteGroupsSelectedButton == 1) {
      colorsList.add(Colors.white);
      colorsList.add(Colors.black);
      colorsList.add(Colors.blue);
      colorsList.add(Colors.white);
    }
    return colorsList;
  }

  @override
  Color buttonColorProperty(int index) {
    List<Color> colorsList = buttonColorAndTextColor();
    return colorsList.elementAt(index);
  }

  @override
  void goToEvaluateAbstractsPart2(group) {
    Get.toNamed(AppRoute.evaluateAbstractsPart2, arguments: group);
  }

  @override
  void goToEvaluateMyGroupsPart2(group) {
    Get.toNamed(AppRoute.evaluateMyGroupsPart2, arguments: group);
  }
}
