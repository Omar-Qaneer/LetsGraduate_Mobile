import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class NotificationsController extends GetxController {
  Widget notificationLeading(var notificationType, var notificationSenderType);
}

class NotificationsControllerImp extends NotificationsController {
  @override
  Widget notificationLeading(notificationType, notificationSenderType) {
    if (notificationType == "request" || notificationType == "response") {
      if (notificationSenderType == "group") {
        return const Icon(
          Icons.group_add_sharp,
          size: 35,
        );
      }
      return const Icon(
        Icons.account_circle,
        size: 50,
      );
    } else if (notificationType == "comment") {
      return const Icon(
        Icons.comment_outlined,
        size: 35,
        color: Colors.green,
      );
    }
    return const Icon(
      Icons.info_outline,
      size: 45,
    );
  }
}
