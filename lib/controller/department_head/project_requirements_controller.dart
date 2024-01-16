import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ProjectRequirementsController extends GetxController {}

class ProjectRequirementsControllerImp extends ProjectRequirementsController {
  late TextEditingController textController;

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
}
