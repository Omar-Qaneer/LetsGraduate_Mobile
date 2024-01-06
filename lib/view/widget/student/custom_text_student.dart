import 'package:flutter/material.dart';

class CustomTextStudent extends StatelessWidget {
  final String text;
  final double fontSize;
  final double horizontalPadding;
  final double verticalPadding;
  const CustomTextStudent(
      {super.key,
      required this.text,
      required this.horizontalPadding,
      required this.fontSize,
      required this.verticalPadding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: verticalPadding),
      child: Text(
        text,
        // 'Mohito Maker Machine',
        style: TextStyle(fontSize: fontSize, color: Colors.blue),
      ),
    );
  }
}
