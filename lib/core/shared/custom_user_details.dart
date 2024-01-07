import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/shared/custom_profile_head.dart';
import 'package:flutter_application_1/view/widget/supervisor/custommaterialbutton.dart';
import 'package:flutter_application_1/core/shared/custom_textformfield_profile.dart';
import 'package:get/get.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final userType = Get.arguments['userType'];
    Map<String, Object> data = Get.arguments['data'];
    String labelText =
        userType == "student" ? "Registression Number" : "Academic Number";
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
                    name: data['name'].toString())),

            CustomTextFormFieldProfile(
                labeltext: "Email Address",
                initialValue: data['email'].toString()),

            CustomTextFormFieldProfile(
                labeltext: labelText, initialValue: data['number'].toString()),

            CustomTextFormFieldProfile(
                labeltext: "Department",
                initialValue: data['department'].toString()),

            CustomTextFormFieldProfile(
                labeltext: "Address-City/Village",
                initialValue: data['address'].toString()),

            CustomTextFormFieldProfile(
                labeltext: "Mobile Number",
                initialValue: data['mobileNumber'].toString()),

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
