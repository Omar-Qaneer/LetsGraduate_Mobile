import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/supervisor/custommaterialbutton.dart';
import 'package:flutter_application_1/view/widget/supervisor/customtextformfieldsupervisor.dart';
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
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 24),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                      radius: 50,
                    ),
                  ),
                  Text(
                    student['name'],
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
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
                labeltext: "Registression Number",
                initialValue: student['number'].toString()),

            CustomTextFormFieldSupervisor(
                labeltext: "Department", initialValue: student['department']),

            CustomTextFormFieldSupervisor(
                labeltext: "Address-City/Village",
                initialValue: student['address']),

            CustomTextFormFieldSupervisor(
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
