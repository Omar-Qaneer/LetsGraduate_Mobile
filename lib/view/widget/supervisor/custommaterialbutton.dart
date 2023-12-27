import 'package:flutter/material.dart';

class CustomMaterialButtonSupervisor extends StatelessWidget {
  final String text;
  final double vertical;
  final void Function()? onPressed;
  const CustomMaterialButtonSupervisor(
      {super.key, required this.text, this.onPressed, required this.vertical});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: vertical),
      child: MaterialButton(
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          color: Colors.blue[800],
          textColor: Colors.white,
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
