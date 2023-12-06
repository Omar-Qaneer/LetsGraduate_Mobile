import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/imageasset.dart';

class CustomLogoAuth extends StatelessWidget {
  final double height;
  const CustomLogoAuth({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: height,
      child: Image.asset(
        AppImageAsset.logoImage,
      ),
    );
  }
}
