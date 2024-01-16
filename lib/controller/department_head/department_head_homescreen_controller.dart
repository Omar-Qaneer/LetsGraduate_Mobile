import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class DepartmentHeadHomeScreenController extends GetxController {
  changePage(int index);
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
}
