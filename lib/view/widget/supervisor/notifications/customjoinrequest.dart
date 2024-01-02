import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomJoinRequest extends StatelessWidget {
  final String senderName;
  final String notificationContent;
  final String notificationDuration;
  final String joinType;
  const CustomJoinRequest(
      {super.key,
      required this.senderName,
      required this.notificationContent,
      required this.notificationDuration,
      required this.joinType});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Get.back();
        },
        child: Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(bottom: 2),
          color: Colors.grey[300],
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    child: Icon(
                      joinType == "group"
                          ? Icons.account_circle
                          : Icons.group_add_sharp,
                      size: joinType == "group" ? 50 : 35,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  RichText(
                    text: TextSpan(
                      text: senderName, // Text with different font
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w900),
                      children: [
                        TextSpan(
                          text: notificationContent, // Remaining text
                          style: const TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 60,
                  ),
                  Text(
                    notificationDuration,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const Spacer(),
                  MaterialButton(
                    height: 30,
                    color: Colors.blue,
                    textColor: Colors.white,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100)),
                    onPressed: () {},
                    child: const Text(
                      "ACCEPT",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  MaterialButton(
                    height: 30,
                    color: Colors.white,
                    textColor: Colors.black,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {},
                    child: const Text(
                      "DECLINE",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
