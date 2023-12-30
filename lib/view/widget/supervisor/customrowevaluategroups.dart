import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/supervisor/evaluategroups_controller.dart';
import 'package:get/get.dart';

class CustomRowEvaluatGroups extends StatelessWidget {
  const CustomRowEvaluatGroups({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(EvaluateGroupsControllerImp());
    int totalAbstracts = 6;
    int notEvaluated = 3;
    int evaluated = 3;
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
              child: Text("Not Evaluated: $notEvaluated"),
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
              child: Text("Evaluated: $evaluated"),
            ),
            Text("Total: $totalAbstracts")
          ],
        ),
      ),
    );
  }
}
