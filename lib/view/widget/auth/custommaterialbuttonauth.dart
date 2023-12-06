import 'package:flutter/material.dart';

class CustomMaterialButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomMaterialButtonAuth(
      {super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(vertical: 13),
      minWidth: 350,
      onPressed: onPressed,
      color: Colors.blue[800],
      textColor: Colors.white,
      child: Text(text),
    );
  }
}
