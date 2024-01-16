import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class DepartmentHeadHomeScreenController extends GetxController {
  changePage(int index);
  void goToProjectRequirementsPages(int projectNumber);
}

class DepartmentHeadHomeScreenControllerImp
    extends DepartmentHeadHomeScreenController {
  int currentPage = 0;
  List<Widget> listPage = [
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text("Home"),
        ),
      ],
    ),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text("Groups"),
        ),
      ],
    ),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text("Deadlines"),
        ),
      ],
    ),
  ];
  @override
  changePage(int index) {
    currentPage = index;
    update();
  }

  @override
  void goToProjectRequirementsPages(int projectNumber) {
    Get.toNamed(AppRoute.projectRequirements, arguments: projectNumber);
  }
}
