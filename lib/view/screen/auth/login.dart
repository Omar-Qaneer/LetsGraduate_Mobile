import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/auth/customlogoauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextbuttonauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextformauth.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    String space = "\t\t\t\t\t\t\t\t\t\t";
    return Scaffold(
        //appBar: AppBar(title: Text("Contact")),
        body: ListView(
      children: [
        Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo_image
            const CustomLogoAuth(),

            //registressionNumber_field
            const CustomTextFormAuth(
              labeltext: "Regestression Number*",
              obscureText: false,
              textInputType: TextInputType.number,
            ),

            //password_field
            const CustomTextFormAuth(
              labeltext: "Password*",
              obscureText: true,
              textInputType: TextInputType.text,
            ),

            //forgetPassword_button
            Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 30),
                child: CustomTextButtonAuth(
                  textOfTextButton: "Forget Password ?",
                  alignment: Alignment.centerRight,
                  onPressed: () {},
                )),

            //signin_button
            MaterialButton(
              minWidth: 350,
              onPressed: () {},
              color: Colors.blue[800],
              textColor: Colors.white,
              child: const Text("SIGN IN"),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: CustomTextButtonAuth(
                textOfTextButton: "Don't have account ?\n$space Sign Up",
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
