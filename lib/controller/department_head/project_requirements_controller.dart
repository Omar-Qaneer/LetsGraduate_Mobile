import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ProjectRequirementsController extends GetxController {
  void addQuestion();
}

class ProjectRequirementsControllerImp extends ProjectRequirementsController {
  late TextEditingController textController;
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
}
