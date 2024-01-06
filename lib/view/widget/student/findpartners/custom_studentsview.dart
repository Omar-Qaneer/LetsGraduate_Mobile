import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/student/custom_listtile.dart';

class CustomStudentsView extends StatelessWidget {
  final dynamic students;
  const CustomStudentsView({super.key, this.students});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: students.length,
      itemBuilder: (context, index) {
        final student = students[index];
        return CustomListTileStudent(
          name: student['name'].toString(),
          email: student['email'].toString(),
          pageName: 'FindPartners',
          widget: const Icon(
            Icons.account_circle,
            size: 45,
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );
  }
}
