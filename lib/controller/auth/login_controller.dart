import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToSupervisorHomeScreen();
  goToStudentHomeScreen();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController registressionNumber;
  late TextEditingController password;

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }

  @override
  login() {}

  @override
  void onInit() {
    registressionNumber = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    registressionNumber.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  goToSupervisorHomeScreen() {
    Get.offAllNamed(AppRoute.supervisorHomeScreen);
  }

  @override
  goToStudentHomeScreen() {
    Get.offAllNamed(AppRoute.studentHomeScreen);
  }
}
