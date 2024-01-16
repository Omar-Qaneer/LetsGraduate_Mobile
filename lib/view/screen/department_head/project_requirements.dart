import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/department_head/project_requirements_controller.dart';
import 'package:flutter_application_1/view/widget/department_head/custom_materialbutton_departmenthead.dart';
import 'package:flutter_application_1/view/widget/department_head/custom_textformfield_departmenthead.dart';
import 'package:get/get.dart';

class ProjectRequirements extends StatelessWidget {
  const ProjectRequirements({super.key});

  @override
  Widget build(BuildContext context) {
    int projectNumber = Get.arguments;
    ProjectRequirementsControllerImp controller =
        Get.put(ProjectRequirementsControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text("Project{$projectNumber} Requirements"),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(children: [
              const Spacer(),
              CustomMaterialButtonDepartmentHead(
                text: "Add Question",
                withIcon: true,
                onPressed: () {},
              )
            ]),
            Expanded(
              child: CustomTextFormFieldDepartmentHead(
                  hintText: "Enter question",
                  controller: controller.textController,
                  iconData: Icons.question_mark),
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
