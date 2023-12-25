import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/auth/signup_controller.dart';
import 'package:flutter_application_1/view/widget/auth/custommaterialbuttonauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextformauth.dart';
import 'package:get/get.dart';

class AccountDetailsInfo extends StatelessWidget {
  const AccountDetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());

    return Form(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        //StudentNumber_field
        CustomTextFormAuth(
          labeltext: "University Number*",
          obscureText: false,
          textInputType: TextInputType.number,
          hinttext: 'Enter Your Number',
          iconData: Icons.lock_outline,
          mycontroller: controller.registressionNumber,
        ),

        //department_field
        CustomTextFormAuth(
          labeltext: "Department*",
          obscureText: false,
          textInputType: TextInputType.text,
          hinttext: 'Enter Department Name',
          iconData: Icons.lock_outline,
          mycontroller: controller.department,
        ),

        //password_field
        CustomTextFormAuth(
          labeltext: "Password*",
          obscureText: true,
          textInputType: TextInputType.text,
          hinttext: 'Enter Your Password',
          iconData: Icons.lock_outline,
          mycontroller: controller.password,
        ),

        const SizedBox(
          height: 60,
        ),

        //signup_button
        CustomMaterialButtonAuth(
          text: "Register now",
          onPressed: () {},
        ),
      ]),
    );
  }
}
