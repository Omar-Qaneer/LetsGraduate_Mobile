import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:flutter_application_1/view/screen/auth/login.dart';
import 'package:flutter_application_1/view/screen/auth/signup.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
};
