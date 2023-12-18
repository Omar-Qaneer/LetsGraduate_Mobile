import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/auth/signup_controller.dart';
import 'package:flutter_application_1/view/widget/auth/customlogoauth.dart';
import 'package:flutter_application_1/view/widget/auth/custommaterialbuttonauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextbuttonauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextformauth.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign Up"),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: ListView(
          children: [
            Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo_image
                const CustomLogoAuth(
                  height: 100,
                ),

                //StudentName_field
                CustomTextFormAuth(
                  labeltext: "Full Name*",
                  obscureText: false,
                  textInputType: TextInputType.text,
                  hinttext: 'Enter Your Name',
                  iconData: Icons.account_circle_rounded,
                  mycontroller: controller.fullName,
                ),

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
                  height: 20,
                ),

                //signup_button
                CustomMaterialButtonAuth(
                  text: "SIGN UP",
                  onPressed: () {},
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: CustomTextButtonAuth(
                    textOfTextButton: "Already have account ? Sign In",
                    onPressed: () {
                      controller.goToSignIn();
                    },
                    alignment: Alignment.center,
                  ),
                )
              ],
            )),
          ],
        ));
  }
}
