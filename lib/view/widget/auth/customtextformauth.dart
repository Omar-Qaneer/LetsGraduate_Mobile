import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String labeltext;
  final bool obscureText;
  final TextInputType textInputType;
  const CustomTextFormAuth(
      {super.key,
      required this.labeltext,
      required this.obscureText,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 30),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: textInputType,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          labelText: labeltext,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
        ),
      ),
    );
  }
}
