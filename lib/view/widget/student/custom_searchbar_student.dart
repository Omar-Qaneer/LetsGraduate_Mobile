import 'package:flutter/material.dart';

class CustomSearchBarStudent extends StatelessWidget {
  final String hintText;
  const CustomSearchBarStudent({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        onTap: () {},
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          prefixIcon: const Icon(Icons.search),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          hintText: hintText,
        ),
      ),
    );
  }
}
