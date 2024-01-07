import 'package:flutter/material.dart';

class CustomTrailing extends StatelessWidget {
  final void Function()? onPressed1;
  final void Function()? onPressed2;
  final String buttonTwoText;
  const CustomTrailing({
    super.key,
    this.onPressed1,
    this.onPressed2,
    required this.buttonTwoText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[300],
          ),
          child: TextButton(
            onPressed: onPressed1,
            child: const Text(
              "more info",
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 33,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(width: 1, color: Colors.black),
            color: Colors.blue,
          ),
          child: TextButton(
            onPressed: onPressed2,
            child: Text(
              buttonTwoText,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
