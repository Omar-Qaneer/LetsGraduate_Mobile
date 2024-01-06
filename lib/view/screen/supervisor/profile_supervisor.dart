import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/shared/custom_profile_head.dart';
import 'package:flutter_application_1/core/shared/custom_textformfield_profile.dart';

class ProfileSupervisor extends StatelessWidget {
  const ProfileSupervisor({super.key});

  @override
  Widget build(BuildContext context) {
    Map supervisor = {
      "name": "DR.Manar Qamhiee",
      "email": "manarqamhiee@gmail.com",
      "academicNumber": "1394",
      "department": "Computer Engineering",
      "address": "Nablus",
      "mobileNumber": "0594251789",
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
                name: supervisor['name']),
          ),

          CustomTextFormFieldSupervisor(
              labeltext: "Email Address", initialValue: supervisor['email']),

          CustomTextFormFieldSupervisor(
              labeltext: "Academic Number",
              initialValue: supervisor['academicNumber'].toString()),

          CustomTextFormFieldSupervisor(
              labeltext: "Department", initialValue: supervisor['department']),

          CustomTextFormFieldSupervisor(
              labeltext: "Address-City/Village",
              initialValue: supervisor['address']),

          CustomTextFormFieldSupervisor(
              labeltext: "Mobile Number",
              initialValue: supervisor['mobileNumber'].toString()),
        ],
      ),
    );
  }
}
