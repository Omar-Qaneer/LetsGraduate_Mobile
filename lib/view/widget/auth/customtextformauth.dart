import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String labeltext;
  final String hinttext;
  final IconData iconData;
  final bool obscureText;
  final TextInputType textInputType;
  const CustomTextFormAuth(
      {super.key,
      required this.labeltext,
      required this.obscureText,
      required this.textInputType,
      required this.hinttext,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 30),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(fontSize: 12),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          labelText: labeltext,
          suffixIcon: Icon(iconData),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
        ),
      ),
    );
  }
}
