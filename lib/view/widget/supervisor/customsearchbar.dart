import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;
  const CustomSearchBar({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          prefixIcon: const Icon(Icons.search),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 5,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
