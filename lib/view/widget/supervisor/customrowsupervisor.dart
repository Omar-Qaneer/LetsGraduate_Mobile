import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomRowSupervisor<T extends GetxController> extends StatelessWidget {
  final String labelFirstButton;
  final String textFirstButton;
  final String labelSecondButton;
  final String textSecondButton;
  final Color firstButtonColor;
  final Color firstButtonTextColor;
  final Color secondButtonColor;
  final Color secondButtonTextColor;
  final void Function()? onPressed1;
  final void Function()? onPressed2;

  const CustomRowSupervisor({
    super.key,
    required this.labelFirstButton,
    required this.textFirstButton,
    required this.labelSecondButton,
    required this.textSecondButton,
    required this.firstButtonColor,
    required this.firstButtonTextColor,
    required this.secondButtonColor,
    required this.secondButtonTextColor,
    this.onPressed1,
    this.onPressed2,
  });

  @override
  Widget build(BuildContext context) {
    int totalAbstracts = 6;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MaterialButton(
            color: firstButtonColor,
            textColor: firstButtonTextColor,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none),
            onPressed: onPressed1,
            child: Text(labelFirstButton + textFirstButton),
          ),
          MaterialButton(
            color: secondButtonColor,
            textColor: secondButtonTextColor,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none),
            onPressed: onPressed2,
            child: Text(labelSecondButton + textSecondButton),
          ),
          Text("Total: $totalAbstracts")
        ],
      ),
    );
  }
}
