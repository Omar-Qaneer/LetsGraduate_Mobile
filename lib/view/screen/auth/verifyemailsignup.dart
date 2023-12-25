import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/auth/signup_controller.dart';
import 'package:flutter_application_1/view/widget/auth/customlogoauth.dart';
import 'package:flutter_application_1/view/widget/auth/custommaterialbuttonauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextbuttonauth.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyEmailSignUp extends StatelessWidget {
  const VerifyEmailSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      body: ListView(
        children: [
          Form(
              child: Container(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Verify your Email address",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500),
                ),
                //logo_image
                Container(
                  margin: const EdgeInsets.only(top: 60, bottom: 20),
                  child: const CustomLogoAuth(height: 100),
                ),

                const Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Text(
                    "Check Code",
                    style: TextStyle(fontSize: 22),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Text(
                    "Enter the 4 digits verification code received",
                    style: TextStyle(fontSize: 16),
                  ),
                ),

                OtpTextField(
                  fieldWidth: 60.0,
                  borderRadius: BorderRadius.circular(20),
                  numberOfFields: 4,
                  enabledBorderColor: Colors.black,

                  borderColor: const Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    controller.goToSuccessSignUp();
                  }, // end onSubmit
                ),

                const SizedBox(
                  height: 16.0,
                ),

                CustomTextButtonAuth(
                  textOfTextButton: "Resend Button",
                  alignment: Alignment.center,
                  onPressed: () {},
                ),

                const SizedBox(
                  height: 16.0,
                ),

                CustomMaterialButtonAuth(
                  text: "Verify",
                  onPressed: () {},
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
