import 'package:flutter/material.dart';

class CustomMaterialButtonDepartmentHead extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final bool withIcon;
  const CustomMaterialButtonDepartmentHead(
      {super.key, required this.text, this.onPressed, required this.withIcon});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: Colors.blue[700],
        textColor: Colors.white,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
        onPressed: () {},
        child: withIcon
            ? Row(children: [
                const Icon(
                  Icons.add,
                  color: Colors.grey,
                  size: 15,
                ),
                Text(
                  text,
                  style: const TextStyle(fontSize: 10),
                )
              ])
            : Text(text));
  }
}
