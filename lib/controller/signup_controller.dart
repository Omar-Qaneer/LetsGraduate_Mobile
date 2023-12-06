import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  login();
  goToSignUp();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController fullName;
  late TextEditingController registressionNumber;
  late TextEditingController department;
  late TextEditingController address;
  late TextEditingController mobileNumber;
  late TextEditingController password;

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }

  @override
  login() {}

  @override
  void onInit() {
    fullName = TextEditingController();
    registressionNumber = TextEditingController();
    department = TextEditingController();
    address = TextEditingController();
    mobileNumber = TextEditingController();
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
    password.dispose();
    super.dispose();
  }
}
