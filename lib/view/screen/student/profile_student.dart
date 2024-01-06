import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/shared/custom_profile_head.dart';
import 'package:flutter_application_1/core/shared/custom_textformfield_profile.dart';

class ProfileStudent extends StatelessWidget {
  const ProfileStudent({super.key});

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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          //profile picture
          Center(
              child: CustomProfileHead(
                  widget: const Icon(
                    Icons.account_circle,
                    size: 100,
                  ),
                  name: student['name'])),

          CustomTextFormFieldProfile(
              labeltext: "Email Address", initialValue: student['email']),

          CustomTextFormFieldProfile(
              labeltext: "Registration Number",
              initialValue: student['registrationNumber'].toString()),

          CustomTextFormFieldProfile(
              labeltext: "Department", initialValue: student['department']),

          CustomTextFormFieldProfile(
              labeltext: "Address-City/Village",
              initialValue: student['address']),

          CustomTextFormFieldProfile(
              labeltext: "Mobile Number",
              initialValue: student['mobileNumber'].toString()),
        ],
      ),
    );
  }
}
