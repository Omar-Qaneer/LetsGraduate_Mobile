import 'package:flutter/material.dart';

class CustomTextFormFieldProfile extends StatelessWidget {
  final String labeltext;
  final String initialValue;
  const CustomTextFormFieldProfile({
    super.key,
    required this.labeltext,
    required this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: TextFormField(
        initialValue: initialValue,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        enabled: false,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            labelText: labeltext),
      ),
    );
  }
}
