import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/supervisor/notifications_controller.dart';
import 'package:flutter_application_1/view/widget/supervisor/notifications/custom_notification_content.dart';
import 'package:flutter_application_1/view/widget/supervisor/notifications/custombuttons_acceptanddecline.dart';
import 'package:get/get.dart';

class CustomJoinRequest extends StatelessWidget {
  final String notificationSender;
  final String notificationSenderType;
  final String notificationContent;
  final String notificationDuration;
  final String notificationType;
  const CustomJoinRequest(
      {super.key,
      required this.notificationSender,
      required this.notificationContent,
      required this.notificationDuration,
      required this.notificationType,
      required this.notificationSenderType});

  @override
  Widget build(BuildContext context) {
    NotificationsControllerImp controller =
        Get.put(NotificationsControllerImp());
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
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: controller.notificationLeading(
                        notificationType, notificationSenderType),
                  ),
                  CustomNotificationContent(
                      notificationSender: notificationSender,
                      notificationContent: notificationContent)
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 45,
                  ),
                  Text(
                    notificationDuration,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const Spacer(),
                  Visibility(
                      visible: notificationType == "request" ? true : false,
                      child: const CustomAcceptAndDeclineButtons()),
                  Visibility(
                      visible: notificationType == "comment" ? true : false,
                      child: MaterialButton(
                        height: 30,
                        color: Colors.grey,
                        textColor: Colors.black,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        onPressed: () {},
                        child: const Text(
                          "SHOW COMMENT",
                          style: TextStyle(fontSize: 12),
                        ),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
