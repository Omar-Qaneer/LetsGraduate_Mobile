import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/auth/successresetpassword_controller.dart';
import 'package:flutter_application_1/core/constant/imageasset.dart';
import 'package:flutter_application_1/view/widget/auth/custommaterialbuttonauth.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80, bottom: 40),
              child: Text(
                "Success!",
                style: TextStyle(fontSize: 40),
              ),
            ),
            Center(child: Image.asset(AppImageAsset.successImage)),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Registration complete!",
              style: TextStyle(fontSize: 18),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomMaterialButtonAuth(
                text: "Start",
                onPressed: () {
                  controller.goToLoginPage();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
