import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class MyProjectController extends GetxController {
  goToStudentDetailsPage(Map<String, Object> student);
}

class MyProjectControllerImp extends MyProjectController {
  @override
  goToStudentDetailsPage(Map<String, Object> student) {
    Get.toNamed(AppRoute.studentDetails, arguments: student);
  }
}
