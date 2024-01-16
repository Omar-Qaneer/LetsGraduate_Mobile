import 'package:flutter/material.dart';

class CustomTextFormFieldDepartmentHead extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final IconData? iconData;
  const CustomTextFormFieldDepartmentHead(
      {super.key, required this.hintText, this.controller, this.iconData});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 14),
        suffixIcon: Icon(iconData),
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      ),
    );
  }
}
