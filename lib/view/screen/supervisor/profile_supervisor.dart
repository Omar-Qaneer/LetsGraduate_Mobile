import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/supervisor/custommaterialbutton.dart';
import 'package:flutter_application_1/view/widget/supervisor/customtextformfieldsupervisor.dart';
import 'package:get/get.dart';

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
                  supervisor['name'],
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
