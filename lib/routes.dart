import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:flutter_application_1/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:flutter_application_1/view/screen/auth/login.dart';
import 'package:flutter_application_1/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:flutter_application_1/view/screen/auth/signup.dart';
import 'package:flutter_application_1/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:flutter_application_1/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:flutter_application_1/view/screen/auth/success_signup.dart';
import 'package:flutter_application_1/view/screen/auth/verifyemailsignup.dart';
import 'package:flutter_application_1/view/screen/supervisor/groupdetails.dart';
import 'package:flutter_application_1/view/screen/supervisor/supervisorhomescreen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verifyCode: (context) => const VerifyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.successResetPassword: (context) => const SuccessResetPassword(),
  AppRoute.verifyEmailSignUp: (context) => const VerifyEmailSignUp(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),
  AppRoute.supervisorHomeScreen: (context) => const SupervisorHomeScreen(),
  AppRoute.groupDetails: (context) => const GroupDetails(),
};
