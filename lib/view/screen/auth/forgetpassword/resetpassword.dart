import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/auth/resetpassword_controller.dart';
import 'package:flutter_application_1/core/constant/imageasset.dart';
import 'package:flutter_application_1/view/widget/auth/customlogoauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextformauth.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Password"),
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
              Container(
                margin: const EdgeInsets.only(top: 60, bottom: 20),
                child: const CustomLogoAuth(height: 80),
              ),

              const SizedBox(
                height: 30,
              ),

              //new password_field
              CustomTextFormAuth(
                labeltext: "Password*",
                obscureText: true,
                textInputType: TextInputType.text,
                hinttext: 'Enter New password',
                iconData: Icons.lock_outline,
                mycontroller: controller.newPassword,
              ),

              //confirm new password_field
              CustomTextFormAuth(
                labeltext: "Password*",
                obscureText: true,
                textInputType: TextInputType.text,
                hinttext: 'Confirm new password',
                iconData: Icons.lock_outline,
                mycontroller: controller.confirmNewPassword,
              ),

              const SizedBox(
                height: 60,
              ),

              //submitting_button
              MaterialButton(
                minWidth: 350,
                onPressed: () {
                  controller.goToSuccessResetPassword();
                },
                color: Colors.blue[800],
                textColor: Colors.white,
                child: const Text(
                  "Submitting...",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
