import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/student/custom_text_student.dart';

class MyPartners extends StatelessWidget {
  const MyPartners({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Partners"),
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: ListView(children: const [
              // titles
              CustomTextStudent(
                text: "Click to see member details",
                fontSize: 25,
                horizontalPadding: 15,
                verticalPadding: 5,
              ),
            ])));
  }
}
