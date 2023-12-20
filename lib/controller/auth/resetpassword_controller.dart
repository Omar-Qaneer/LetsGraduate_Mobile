import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController newPassword;
  late TextEditingController confirmNewPassword;

  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoute.successResetPassword);
  }

  @override
  resetPassword() {}

  @override
  void onInit() {
    newPassword = TextEditingController();
    confirmNewPassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    newPassword.dispose();
    confirmNewPassword.dispose();
    super.dispose();
  }
}
