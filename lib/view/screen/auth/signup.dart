import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/auth/signup_controller.dart';
import 'package:flutter_application_1/view/widget/auth/customaccountdetailssignup.dart';
import 'package:flutter_application_1/view/widget/auth/customlogoauth.dart';
import 'package:flutter_application_1/view/widget/auth/custommaterialbuttonauth.dart';
import 'package:flutter_application_1/view/widget/auth/custompersonalinfosignup.dart';
import 'package:flutter_application_1/view/widget/auth/customtextbuttonauth.dart';
import 'package:flutter_application_1/view/widget/auth/customtextformauth.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: const Text("Sign Up"),
            bottom: TabBar(
              controller: controller.tabController,
              tabs: controller.signUpTabs,
            ),
            centerTitle: true,
            elevation: 0.0,
          ),
          body: ListView(
            children: [
              Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  //logo_image
                  const CustomLogoAuth(
                    height: 100,
                  ),

                  SizedBox(
                    height: 400,
                    child: TabBarView(
                      controller: controller.tabController,
                      children: const [
                        PersonalInfo(),
                        AccountDetailsInfo(),
                      ],
                    ),
                  ),

                  // ),

                  // Padding(
                  //   padding: const EdgeInsets.only(top: 20),
                  //   child: CustomTextButtonAuth(
                  //     textOfTextButton: "Already have account ? Sign In",
                  //     onPressed: () {
                  //       // controller.goToSignIn();
                  //     },
                  //     alignment: Alignment.center,
                  //   ),
                  // )
                ],
              )),
            ],
          )),
    );
  }
}
