import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/department_head/project_requirements_controller.dart';
import 'package:get/get.dart';

class ProjectRequirements extends StatelessWidget {
  const ProjectRequirements({super.key});

  @override
  Widget build(BuildContext context) {
    ProjectRequirementsControllerImp controller =
        Get.put(ProjectRequirementsControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                const Spacer(),
                MaterialButton(
                  color: Colors.blue[700],
                  textColor: Colors.white,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.grey,
                        size: 15,
                      ),
                      Text(
                        "Add Question",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: TextFormField(
                controller: controller.textController,
                decoration: InputDecoration(
                  hintText: "Enter question",
                  hintStyle: const TextStyle(fontSize: 12),
                  suffixIcon: const Icon(Icons.question_mark),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20, top: 40),
              child: Text(
                "Project Requirements",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
