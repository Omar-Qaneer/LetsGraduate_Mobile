import 'package:flutter/material.dart';

class CustomProfileHead extends StatelessWidget {
  final Widget widget;
  final String name;
  const CustomProfileHead({
    super.key,
    required this.widget,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 24),
          child: CircleAvatar(radius: 50, child: widget),
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
