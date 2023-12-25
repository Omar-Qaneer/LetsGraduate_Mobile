import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController fullName;
  late TextEditingController registressionNumber;
  late TextEditingController department;
  late TextEditingController address;
  late TextEditingController mobileNumber;
  late TextEditingController email;
  late TextEditingController password;

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  signUp() {}

  @override
  void onInit() {
    fullName = TextEditingController();
    registressionNumber = TextEditingController();
    department = TextEditingController();
    address = TextEditingController();
    mobileNumber = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    fullName.dispose();
    registressionNumber.dispose();
    department.dispose();
    address.dispose();
    mobileNumber.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
