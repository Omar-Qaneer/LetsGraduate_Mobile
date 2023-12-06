import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/login_controller.dart';
import 'package:flutter_application_1/view/widget/auth/customlogoauth.dart';
import 'package:flutter_application_1/view/widget/auth/custommaterialbuttonauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextbuttonauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextformauth.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    String space = "\t\t\t\t\t\t\t\t\t\t";
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign In"),
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
                  labeltext: "Regestression Number*",
                  obscureText: false,
                  textInputType: TextInputType.number,
                  hinttext: 'Enter Your Number',
                  iconData: Icons.numbers,
                  mycontroller: controller.registressionNumber,
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

                //forgetPassword_button
                Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: CustomTextButtonAuth(
                      textOfTextButton: "Forget Password ?",
                      alignment: Alignment.centerRight,
                      onPressed: () {},
                    )),

                //signin_button
                CustomMaterialButtonAuth(
                  text: "SIGN IN",
                  onPressed: () {},
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: CustomTextButtonAuth(
                    textOfTextButton: "Don't have account ?\n$space Sign Up",
                    onPressed: () {
                      controller.goToSignUp();
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
