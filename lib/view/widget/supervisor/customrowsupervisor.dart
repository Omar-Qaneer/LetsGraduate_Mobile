import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/supervisor/evaluategroups_controller.dart';
import 'package:flutter_application_1/controller/supervisor/submissions_controller.dart';
import 'package:get/get.dart';

class CustomRowSupervisor extends StatelessWidget {
  final String pageName;
  final String labelFirstButton;
  final String textFirstButton;
  final String labelSecondButton;
  final String textSecondButton;
  const CustomRowSupervisor(
      {super.key,
      required this.pageName,
      required this.labelFirstButton,
      required this.textFirstButton,
      required this.labelSecondButton,
      required this.textSecondButton});

  @override
  Widget build(BuildContext context) {
    Get.put(pageName == "EvaluatGroups"
        ? EvaluateGroupsControllerImp()
        : SubmissionsControllerImp());
    int totalAbstracts = 6;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: GetBuilder<EvaluateGroupsControllerImp>(
        builder: (controller) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              color:
                  controller.selectedButton == 0 ? Colors.blue : Colors.white,
              textColor:
                  controller.selectedButton == 0 ? Colors.white : Colors.black,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
              onPressed: () {
                controller.setSelectedButton(0);
              },
              child: Text(labelFirstButton + textFirstButton),
            ),
            MaterialButton(
              color:
                  controller.selectedButton == 1 ? Colors.blue : Colors.white,
              textColor:
                  controller.selectedButton == 1 ? Colors.white : Colors.black,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
              onPressed: () {
                controller.setSelectedButton(1);
              },
              child: Text(labelSecondButton + textSecondButton),
            ),
            Text("Total: $totalAbstracts")
          ],
        ),
      ),
    );
  }
}
