import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ProjectRequirementsController extends GetxController {
  void addQuestion();
  void toggleDropdown(int index);
  void deleteQuestion(int index);
}

class ProjectRequirementsControllerImp extends ProjectRequirementsController {
  late TextEditingController textController;
  var expandedCardIndex = -1;
  var items = ['edit', 'delete'];
  List requirements = [
    "Did you finish 120 hour of your university courses?",
    "Did you finish microcontrollers course?",
    "Did you finish software engineering course?",
    "Did you finish microcontrollers lab?"
  ];

  @override
  void onInit() {
    textController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  void addQuestion() {
    if (textController.text == "") {
      return;
    }
    requirements.add(textController.text);
    textController.clear();
    update();
  }

  @override
  void toggleDropdown(int index) {
    expandedCardIndex = expandedCardIndex == index ? -1 : index;
    update();
  }

  @override
  void deleteQuestion(int index) {
    requirements.removeAt(index);
    update();
  }
}
