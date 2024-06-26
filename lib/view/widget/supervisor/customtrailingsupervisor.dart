import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/supervisor/mygroups_controller.dart';
import 'package:get/get.dart';

class CustomTrailingSupervisor extends StatelessWidget {
  final int index;
  final Set<Map<String, Object>> group;
  const CustomTrailingSupervisor(
      {super.key, required this.index, required this.group});

  @override
  Widget build(BuildContext context) {
    MyGroupsControllerImp controller = Get.put(MyGroupsControllerImp());
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 5),
      color: Colors.grey[300],
      textColor: Colors.black,
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      onPressed: () {
        controller.goToGroupDetailsPage(group);
      },
      child: const Text("more info"),
    );
  }
}
