import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class EvaluateGroupsController extends GetxController {
  void setSelectedButton(var newSelectedButton);
  List<Color> buttonColorAndTextColor();
  Color buttonColorProperty(int index);
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
}
