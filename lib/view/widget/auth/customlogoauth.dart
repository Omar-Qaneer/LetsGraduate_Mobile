import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/imageasset.dart';

class CustomLogoAuth extends StatelessWidget {
  const CustomLogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Image.asset(
        AppImageAsset.logoImage,
      ),
    );
  }
}
