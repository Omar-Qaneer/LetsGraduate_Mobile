import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/auth/signup_controller.dart';
import 'package:flutter_application_1/view/widget/auth/customtextformauth.dart';
import 'package:get/get.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Form(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        //StudentName_field
        CustomTextFormAuth(
          labeltext: "Full Name*",
          obscureText: false,
          textInputType: TextInputType.text,
          hinttext: 'Enter Your Name',
          iconData: Icons.account_circle_rounded,
          mycontroller: controller.fullName,
        ),

        //StudentName_field
        CustomTextFormAuth(
          labeltext: "Email Address*",
          obscureText: false,
          textInputType: TextInputType.emailAddress,
          hinttext: 'Enter your email',
          iconData: Icons.email,
          mycontroller: controller.email,
        ),

        //Address_field
        CustomTextFormAuth(
          labeltext: "Address-City/Village*",
          obscureText: false,
          textInputType: TextInputType.text,
          hinttext: 'Enter Your Address',
          iconData: Icons.add_location_alt,
          mycontroller: controller.address,
        ),

        //MobileNumber_field
        CustomTextFormAuth(
          labeltext: "Mobile Number*",
          obscureText: false,
          textInputType: TextInputType.phone,
          hinttext: 'Enter Your Number',
          iconData: Icons.add_ic_call,
          mycontroller: controller.mobileNumber,
        ),
      ]),
    );
  }
}
