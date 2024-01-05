import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class StudentHomeScreenController extends GetxController {
  changePage(int index);
}

class StudentHomeScreenControllerImp extends StudentHomeScreenController {
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
          child: Text("My partners"),
        ),
      ],
    ),
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
