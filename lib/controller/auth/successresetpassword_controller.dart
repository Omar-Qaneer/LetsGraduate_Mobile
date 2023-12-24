import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {
  successResetPassword();
  goToLoginPage();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToLoginPage() {
    Get.offNamed(AppRoute.login);
  }

  @override
  successResetPassword() {}
}
