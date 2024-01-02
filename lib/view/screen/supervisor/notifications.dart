import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/supervisor/notifications/custom_notification_view.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
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
                "Today",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomJoinRequest(
                notificationSender: 'Jamal SaadEldeen ',
                notificationContent: 'is requesting to join \nyour group',
                notificationDuration: '2 hours ago',
                notificationType: 'group',
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Before That",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const CustomJoinRequest(
                notificationSender: 'Group 1 ',
                notificationContent:
                    'is requesting you to supervise \nthier group',
                notificationDuration: 'Mon at 7:03 AM',
                notificationType: 'supevisor',
              ),
              const CustomJoinRequest(
                notificationSender: 'Group 1 ',
                notificationContent:
                    'is requesting you to supervise \nthier group',
                notificationDuration: 'Mon at 7:03 AM',
                notificationType: 'supevisor',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
