import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/supervisor/notifications/custom_notification_content.dart';
import 'package:flutter_application_1/view/widget/supervisor/notifications/custombuttons_acceptanddecline.dart';
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
                  CustomNotificationContent(
                      senderName: senderName,
                      notificationContent: notificationContent)
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
                  const CustomAcceptAndDeclineButtons()
                ],
              )
            ],
          ),
        ));
  }
}
