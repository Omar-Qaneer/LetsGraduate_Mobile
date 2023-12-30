import 'package:get/get.dart';

abstract class SubmissionsController extends GetxController {
  void setSelectedButton(var newSelectedButton);
}

class SubmissionsControllerImp extends SubmissionsController {
  var selectedButton = 0;

  @override
  void setSelectedButton(newSelectedButton) {
    selectedButton = newSelectedButton;
    update();
  }
}
