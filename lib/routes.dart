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
import 'package:flutter_application_1/view/screen/department_head/department_head_homescreen.dart';
import 'package:flutter_application_1/view/screen/student/student_homescreen.dart';
import 'package:flutter_application_1/view/screen/supervisor/evaluate_abstracts/evaluate_abstracts_part2.dart';
import 'package:flutter_application_1/view/screen/supervisor/evaluate_abstracts/evaluate_abstracts_part1.dart';
import 'package:flutter_application_1/core/shared/groupdetails.dart';
import 'package:flutter_application_1/core/shared/custom_user_details.dart';
import 'package:flutter_application_1/view/screen/supervisor/evaluate_mygroups/evaluate_mygroups_part2.dart';
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
  AppRoute.userDetails: (context) => const UserDetails(),
  AppRoute.evaluateGroups: (context) => const EvaluateAbstractsPart1(),
  AppRoute.studentHomeScreen: (context) => const StudentHomeScreen(),
  AppRoute.evaluateAbstractsPart2: (context) => const Evaluation(),
  AppRoute.evaluateMyGroupsPart2: (context) => const EvaluateMyGroupsPart2(),
  AppRoute.departmentHeadHomeScreen: (context) =>
      const DepartmentHeadHomeScreen(),
};
