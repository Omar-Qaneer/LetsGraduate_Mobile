import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class RegisterToSupervisorController extends GetxController {
  goToSupervisorDetailsPage(Map<String, Object> supervisor);
}

class RegisterToSupervisorControllerImp extends RegisterToSupervisorController {
  @override
  goToSupervisorDetailsPage(Map<String, Object> supervisor) {
    Get.toNamed(AppRoute.userDetails,
        arguments: {'data': supervisor, 'userType': "supervisor"});
  }
}
