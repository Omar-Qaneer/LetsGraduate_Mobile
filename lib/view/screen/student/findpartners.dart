import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/student/custom_text_student.dart';

class FindPartners extends StatelessWidget {
  const FindPartners({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: ListView(children: [
          // titles

          ...List.generate(3, (index) {
            final texts = [
              "Find Your Partners",
              "Here You can send request to create partnerships with other students",
              "Available Groups"
            ];
            List<double> fontSizes = [30, 16, 25];
            List<double> horizontalPaddings = [15, 20, 15];
            List<double> verticalPaddings = [5, 20, 15];

            return CustomTextStudent(
              text: texts[index],
              fontSize: fontSizes[index],
              horizontalPadding: horizontalPaddings[index],
              verticalPadding: verticalPaddings[index],
            );
          })
        ]));
  }
}
