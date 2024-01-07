import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class MyGroupsController extends GetxController {
  goToGroupDetailsPage(Set<Map<String, Object>> group);
  goToStudentDetailsPage(Map<String, Object> student);
}

class MyGroupsControllerImp extends MyGroupsController {
  @override
  goToGroupDetailsPage(Set<Map<String, Object>> group) {
    Get.toNamed(AppRoute.groupDetails, arguments: group);
  }

  @override
  goToStudentDetailsPage(Map<String, Object> student) {
    Get.toNamed(AppRoute.userDetails,
        arguments: {'data': student, 'userType': "student"});
  }
}
