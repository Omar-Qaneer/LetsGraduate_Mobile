import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/shared/custom_profile_head.dart';
import 'package:flutter_application_1/view/widget/supervisor/custommaterialbutton.dart';
import 'package:flutter_application_1/core/shared/custom_textformfield_profile.dart';
import 'package:get/get.dart';

class StudentDetails extends StatelessWidget {
  const StudentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final student = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            //profile picture
            Center(
                child: CustomProfileHead(
                    widget: Image.asset("assets/images/profile.jpg"),
                    name: student['name'])),

            CustomTextFormFieldProfile(
                labeltext: "Email Address", initialValue: student['email']),

            CustomTextFormFieldProfile(
                labeltext: "Registression Number",
                initialValue: student['number'].toString()),

            CustomTextFormFieldProfile(
                labeltext: "Department", initialValue: student['department']),

            CustomTextFormFieldProfile(
                labeltext: "Address-City/Village",
                initialValue: student['address']),

            CustomTextFormFieldProfile(
                labeltext: "Mobile Number",
                initialValue: student['mobileNumber'].toString()),

            CustomMaterialButtonSupervisor(
              text: "Back",
              vertical: 25,
              onPressed: () {
                Get.back();
              },
            )
          ],
        ),
      ),
    );
  }
}
