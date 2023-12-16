import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  verifyCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.verifyCode);
  }

  @override
  verifyCode() {}

 
}
