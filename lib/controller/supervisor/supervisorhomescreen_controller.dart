import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/screen/supervisor/mygroups.dart';
import 'package:get/get.dart';

abstract class SupervisorHomeScreenController extends GetxController {
  changePage(int index);
}

class SupervisorHomeScreenControllerImp extends SupervisorHomeScreenController {
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
    const SupervisorGroups(),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text("Settings"),
        ),
      ],
    ),
  ];
  @override
  changePage(int index) {
    currentPage = index;
    update();
  }
}
