import 'package:flutter/material.dart';

void showCustomDialog(BuildContext context) {
  final textController = TextEditingController();

  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Icon(
        Icons.comment,
        size: 50,
        color: Colors.green,
      ),
      content: Container(
        padding: const EdgeInsets.all(20),
        height: 100,
        width: 200,
        child: TextField(
          maxLines: 5,
          textInputAction: TextInputAction.newline,
          controller: textController,
          decoration: const InputDecoration(hintText: 'Enter comment here'),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            // Retrieve entered text
            final enteredText = textController.text;
            Navigator.pop(context, enteredText); // Pass entered text back
          },
          child: const Text('SEND'),
        ),
      ],
    ),
  );
}
