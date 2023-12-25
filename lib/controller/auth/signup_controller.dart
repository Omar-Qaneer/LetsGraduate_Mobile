import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController
    with GetSingleTickerProviderStateMixin {
  signUp();
  goToVerifyEmailPage();
  goToSuccessSignUp();
  void setPageIndex(int newIndex);
}

class SignUpControllerImp extends SignUpController {
  final List<Tab> signUpTabs = <Tab>[
    const Tab(icon: Icon(Icons.person), text: "Personal Info"),
    const Tab(icon: Icon(Icons.lock), text: "Account Details"),
  ];

  late TextEditingController fullName;
  late TextEditingController registressionNumber;
  late TextEditingController department;
  late TextEditingController address;
  late TextEditingController mobileNumber;
  late TextEditingController email;
  late TextEditingController password;
  late TabController tabController;
  int currentPageIndex = 0;

  @override
  goToVerifyEmailPage() {
    Get.offNamed(AppRoute.verifyEmailSignUp);
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
    tabController = TabController(vsync: this, length: signUpTabs.length);
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

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  @override
  void setPageIndex(int newIndex) {
    currentPageIndex = newIndex;
    update();
  }

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
  }
}
