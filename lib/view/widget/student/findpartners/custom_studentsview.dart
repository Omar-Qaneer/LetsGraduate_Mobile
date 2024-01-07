import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/student/findpartners_controller.dart';
import 'package:flutter_application_1/view/widget/student/custom_listtile.dart';
import 'package:flutter_application_1/view/widget/student/findpartners/custom_trailing.dart';
import 'package:get/get.dart';

class CustomStudentsView extends StatelessWidget {
  final dynamic students;
  const CustomStudentsView({super.key, this.students});

  @override
  Widget build(BuildContext context) {
    FindPartnerControllerImp controller = Get.put(FindPartnerControllerImp());
    return ListView.separated(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: students.length,
      itemBuilder: (context, index) {
        final student = students[index];
        return CustomListTileStudent(
          title: student['name'].toString(),
          subtitle: student['email'].toString(),
          pageName: 'StudentsView',
          widget: const Icon(
            Icons.account_circle,
            size: 45,
          ),
          trailing: CustomTrailing(
            buttonTwoText: "Join Group",
            onPressed1: () {
              controller.goToStudentDetailsPage(student);
            },
            onPressed2: () {},
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );
  }
}
