import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/student/custom_text_student.dart';

class FindPartners extends StatelessWidget {
  const FindPartners({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: ListView(children: const [
          // titles
          CustomTextStudent(
            text: "Find Your Partners",
            fontSize: 30,
            horizontalPadding: 15,
            verticalPadding: 5,
          ),

          CustomTextStudent(
            text:
                "Here You can send request to create partnerships with other students",
            fontSize: 16,
            horizontalPadding: 20,
            verticalPadding: 20,
          ),

          CustomTextStudent(
            text: "Available Groups",
            fontSize: 25,
            horizontalPadding: 15,
            verticalPadding: 15,
          ),
        ]));
  }
}
