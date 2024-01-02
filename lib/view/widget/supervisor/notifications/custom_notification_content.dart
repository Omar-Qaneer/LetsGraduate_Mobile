import 'package:flutter/material.dart';

class CustomNotificationContent extends StatelessWidget {
  final String notificationSender;
  final String notificationContent;
  const CustomNotificationContent(
      {super.key,
      required this.notificationSender,
      required this.notificationContent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: RichText(
        text: TextSpan(
          text: notificationSender, // Text with different font
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
          children: [
            TextSpan(
              text: notificationContent, // Remaining text
              style: const TextStyle(fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
