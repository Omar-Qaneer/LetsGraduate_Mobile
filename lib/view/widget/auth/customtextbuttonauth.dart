import 'package:flutter/material.dart';

class CustomTextButtonAuth extends StatelessWidget {
  final String textOfTextButton;
  final void Function()? onPressed;
  final Alignment alignment;
  const CustomTextButtonAuth(
      {super.key,
      required this.textOfTextButton,
      this.onPressed,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          textOfTextButton,
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[800]),
        ),
      ),
    );
  }
}
