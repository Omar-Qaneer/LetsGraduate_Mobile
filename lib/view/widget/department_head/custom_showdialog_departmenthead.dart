import 'package:flutter/material.dart';

class CustomShowDialogDepartmentHead extends StatelessWidget {
  final void Function()? onPressed;
  const CustomShowDialogDepartmentHead({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.red,
            radius: 30, // Adjust size as desired
            child: Icon(
              Icons.delete,
              color: Colors.white,
              size: 35, // Adjust icon size
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            padding: const EdgeInsets.only(left: 6, top: 50),
            height: 150,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delete Question",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  "Are you sure you want to \ndelete this question? This\n will delete the question\n permanently",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
      actions: [
        MaterialButton(
          onPressed: () => Navigator.pop(context), // Close dialog
          shape: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          child: const Text("Cancel"),
        ),
        MaterialButton(
          color: Colors.red,
          textColor: Colors.white,
          onPressed: onPressed,
          child: const Text("Delete Question"),
        ),
      ],
    );
  }
}
