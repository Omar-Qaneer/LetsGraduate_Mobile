import 'package:flutter/material.dart';
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
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 24),
                  child: const CircleAvatar(
                    radius: 50,
                    child: Icon(
                      Icons.account_circle,
                      size: 100,
                    ),
                  ),
                ),
                Text(
                  student['name'],
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),

          CustomTextFormFieldSupervisor(
              labeltext: "Email Address", initialValue: student['email']),

          CustomTextFormFieldSupervisor(
              labeltext: "Registration Number",
              initialValue: student['registrationNumber'].toString()),

          CustomTextFormFieldSupervisor(
              labeltext: "Department", initialValue: student['department']),

          CustomTextFormFieldSupervisor(
              labeltext: "Address-City/Village",
              initialValue: student['address']),

          CustomTextFormFieldSupervisor(
              labeltext: "Mobile Number",
              initialValue: student['mobileNumber'].toString()),
        ],
      ),
    );
  }
}
