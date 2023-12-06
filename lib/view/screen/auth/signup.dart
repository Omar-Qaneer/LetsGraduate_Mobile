import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/auth/customlogoauth.dart';
import 'package:flutter_application_1/view/widget/auth/custommaterialbuttonauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextbuttonauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextformauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
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
                const CustomLogoAuth(),

                //StudentName_field
                const CustomTextFormAuth(
                  labeltext: "Full Name*",
                  obscureText: false,
                  textInputType: TextInputType.number,
                  hinttext: 'Enter Your Name',
                  iconData: Icons.numbers,
                ),

                //StudentNumber_field
                const CustomTextFormAuth(
                  labeltext: "University Number*",
                  obscureText: true,
                  textInputType: TextInputType.text,
                  hinttext: 'Enter Your Number',
                  iconData: Icons.lock_outline,
                ),

                //department_field
                const CustomTextFormAuth(
                  labeltext: "Department*",
                  obscureText: false,
                  textInputType: TextInputType.text,
                  hinttext: 'Enter Department Name',
                  iconData: Icons.lock_outline,
                ),

                //Address_field
                const CustomTextFormAuth(
                  labeltext: "Address-City/Village*",
                  obscureText: false,
                  textInputType: TextInputType.text,
                  hinttext: 'Enter Your Address',
                  iconData: Icons.lock_outline,
                ),

                //MobileNumber_field
                const CustomTextFormAuth(
                  labeltext: "Mobile Number*",
                  obscureText: false,
                  textInputType: TextInputType.phone,
                  hinttext: 'Enter Your Number',
                  iconData: Icons.lock_outline,
                ),

                //password_field
                const CustomTextFormAuth(
                  labeltext: "Password*",
                  obscureText: true,
                  textInputType: TextInputType.text,
                  hinttext: 'Enter Your Password',
                  iconData: Icons.lock_outline,
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
                    onPressed: () {},
                    alignment: Alignment.center,
                  ),
                )
              ],
            )),
          ],
        ));
  }
}
