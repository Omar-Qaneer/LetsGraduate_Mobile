import 'package:get/get.dart';

abstract class EvaluateGroupsController extends GetxController {
  void setSelectedButton(var newSelectedButton);
}

class EvaluateGroupsControllerImp extends EvaluateGroupsController {
  var selectedButton = 0;

  @override
  void setSelectedButton(newSelectedButton) {
    selectedButton = newSelectedButton;
    update();
  }
}
