import 'package:flutter/material.dart';

class CustomTabBarStudent extends StatelessWidget {
  final Widget widget;
  const CustomTabBarStudent({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 5,
        child: Container(
            height: 56,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12)),
            child: widget),
      ),
    );
  }
}
