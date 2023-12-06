import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/forgetpassword_controller.dart';
import 'package:flutter_application_1/view/widget/auth/customlogoauth.dart';
import 'package:flutter_application_1/view/widget/auth/custommaterialbuttonauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextformauth.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Forget Password"),
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
                  height: 200,
                ),

                //registressionNumber_field
                CustomTextFormAuth(
                  labeltext: "Email Address**",
                  obscureText: false,
                  textInputType: TextInputType.text,
                  hinttext: 'Enter Your Email',
                  iconData: Icons.email_rounded,
                  mycontroller: controller.email,
                ),

                const SizedBox(
                  height: 30,
                ),

                //signin_button
                CustomMaterialButtonAuth(
                  text: "SEND CODE TO EMAIL",
                  onPressed: () {
                    controller.goToVerifyCode();
                  },
                ),
              ],
            )),
          ],
        ));
  }
}
