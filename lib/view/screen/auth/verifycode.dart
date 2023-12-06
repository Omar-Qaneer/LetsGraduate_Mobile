import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/auth/customtextbuttonauth.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verification Code"),
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
                width: 200,
                child: Image.asset(
                  "assets/images/letsgraduate-logo-with-text.png",
                ),
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
                onSubmit: (String verificationCode) {}, // end onSubmit
              ),

              const SizedBox(
                height: 16.0,
              ),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Resend Button',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),

              // style: GoogleFonts.urbanist(
              //         fontSize: 14.0,
              //         color: Colors.black,
              //         fontWeight: FontWeight.w700,
              //       ),

              //signin_button
              MaterialButton(
                minWidth: 350,
                onPressed: () {},
                color: Colors.blue[800],
                textColor: Colors.white,
                child: const Text(
                  "Verify",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 35, left: 25),
                child: CustomTextButtonAuth(
                  textOfTextButton: 'Back to Sign In?',
                  alignment: Alignment.centerLeft,
                  onPressed: () {},
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
