import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/screen/student/findpartners.dart';
import 'package:flutter_application_1/view/screen/student/mypartners.dart';
import 'package:flutter_application_1/view/screen/student/myproject.dart';
import 'package:flutter_application_1/view/screen/student/profile_student.dart';
import 'package:flutter_application_1/view/screen/student/register_to_supervisor.dart';
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
    const MyPartners(),
    const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text("Settings"),
        ),
      ],
    ),
    const ProfileStudent(),
    const FindPartners(),
    const MyProject(),
    const RegisterToSupervisor()
  ];
  @override
  changePage(int index) {
    currentPage = index;
    update();
  }
}
