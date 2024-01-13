import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/screen/supervisor/evaluate_my_groups.dart';
import 'package:flutter_application_1/view/screen/supervisor/evaluate_abstracts/evaluategroups.dart';
import 'package:flutter_application_1/view/screen/supervisor/mygroups.dart';
import 'package:flutter_application_1/view/screen/supervisor/notifications.dart';
import 'package:flutter_application_1/view/screen/supervisor/profile_supervisor.dart';
import 'package:flutter_application_1/view/screen/supervisor/submissions.dart';
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
    const EvaluateGroups(),
    const Submissions(),
    const Notifications(),
    const ProfileSupervisor(),
    const EvaluateMyGroups()
  ];
  @override
  changePage(int index) {
    currentPage = index;
    update();
  }
}
