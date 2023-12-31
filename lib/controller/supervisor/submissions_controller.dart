import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SubmissionsController extends GetxController {
  void setSelectedButton(var newSelectedButton);
  List<Color> buttonColorAndTextColor();
  Color buttonColorProperty(int index);
}

class SubmissionsControllerImp extends SubmissionsController {
  var submissionsSelectedButton = 0;

  @override
  void setSelectedButton(newSelectedButton) {
    submissionsSelectedButton = newSelectedButton;
    update();
  }

  @override
  List<Color> buttonColorAndTextColor() {
    List<Color> colorsList = [];
    if (submissionsSelectedButton == 0) {
      colorsList.add(Colors.blue);
      colorsList.add(Colors.white);
      colorsList.add(Colors.white);
      colorsList.add(Colors.black);
    }
    if (submissionsSelectedButton == 1) {
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
