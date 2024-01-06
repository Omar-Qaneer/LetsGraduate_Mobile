import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/student/custom_listtile.dart';
import 'package:flutter_application_1/view/widget/student/custom_text_student.dart';

class MyPartners extends StatelessWidget {
  const MyPartners({super.key});

  @override
  Widget build(BuildContext context) {
    Map student = {
      "name": "Omar Qaneer",
      "email": "omarqaneer@gmail.com",
      "academicNumber": "11925044",
      "department": "Computer Engineering",
      "address": "Nablus",
      "mobileNumber": "0594656980",
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Partners"),
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: ListView(children: [
              // titles
              const CustomTextStudent(
                text: "Click to see member details",
                fontSize: 25,
                horizontalPadding: 15,
                verticalPadding: 5,
              ),
              CustomListTileStudent(
                name: student['name'],
                email: student['email'],
                widget: const Icon(
                  Icons.account_circle,
                  size: 45,
                ),
              )
            ])));
  }
}
