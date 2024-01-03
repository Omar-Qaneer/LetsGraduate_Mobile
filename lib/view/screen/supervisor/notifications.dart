import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/supervisor/notifications/custom_notification_view.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    List newComments = [
      {
        "notificationSender": "Group 1 ",
        "notificationSenderType": "group",
        "notificationContent": "is requesting you to supervise \nthier group",
        "notificationDuration": "Mon at 7:03 AM",
        "notificationType": "request"
      },
      {
        "notificationSender": "Dr.Manar Qamhiee ",
        "notificationSenderType": "doctor",
        "notificationContent":
            "accepted to supervise \nyour group this semester",
        "notificationDuration": "1 hours ago",
        "notificationType": "response"
      },
      {
        "notificationSender": "Jamal SaadEldeen ",
        "notificationSenderType": "student",
        "notificationContent": "is requesting to join \nyour group",
        "notificationDuration": "2 hours ago",
        "notificationType": "request"
      },
      {
        "notificationSender": "Projects Committe ",
        "notificationSenderType": "doctor",
        "notificationContent": "commented on\n your abstract",
        "notificationDuration": "Mon at 7:03 AM",
        "notificationType": "comment"
      }
    ];
    List beforeThatComments = [
      {
        "notificationSender": "Group 1 ",
        "notificationSenderType": "group",
        "notificationContent": "is requesting you to supervise \nthier group",
        "notificationDuration": "Mon at 7:03 AM",
        "notificationType": "request"
      },
      {
        "notificationSender": "Dr.Manar Qamhiee ",
        "notificationSenderType": "doctor",
        "notificationContent":
            "accepted to supervise \nyour group this semester",
        "notificationDuration": "1 hours ago",
        "notificationType": "response"
      },
      {
        "notificationSender": "Jamal SaadEldeen ",
        "notificationSenderType": "student",
        "notificationContent": "is requesting to join \nyour group",
        "notificationDuration": "2 hours ago",
        "notificationType": "request"
      },
      {
        "notificationSender": "Projects Committe ",
        "notificationSenderType": "doctor",
        "notificationContent": "commented on\n your abstract",
        "notificationDuration": "Mon at 7:03 AM",
        "notificationType": "comment"
      }
    ];
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Notifications",
                style: TextStyle(color: Colors.blue[700], fontSize: 30),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "New",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: beforeThatComments.length,
                itemBuilder: (context, index) {
                  final comment = beforeThatComments[index];
                  return CustomJoinRequest(
                    notificationSender: comment['notificationSender'],
                    notificationContent: comment['notificationContent'],
                    notificationDuration: comment['notificationDuration'],
                    notificationType: comment['notificationType'],
                    notificationSenderType: comment['notificationSenderType'],
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Before That",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: newComments.length,
                itemBuilder: (context, index) {
                  final comment = newComments[index];
                  return CustomJoinRequest(
                    notificationSender: comment['notificationSender'],
                    notificationContent: comment['notificationContent'],
                    notificationDuration: comment['notificationDuration'],
                    notificationType: comment['notificationType'],
                    notificationSenderType: comment['notificationSenderType'],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
