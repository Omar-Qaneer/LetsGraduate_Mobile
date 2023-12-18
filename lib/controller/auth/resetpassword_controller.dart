import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToLogin();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController newPassword;

  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  resetPassword() {}

  @override
  void onInit() {
    newPassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    newPassword.dispose();
    super.dispose();
  }
}
