import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class MyPartnersController extends GetxController {
  goToStudentDetailsPage(Map<String, Object> student);
}

class MyPartnersControllerImp extends MyPartnersController {
  @override
  goToStudentDetailsPage(Map<String, Object> student) {
    Get.toNamed(AppRoute.studentDetails, arguments: student);
  }
}
