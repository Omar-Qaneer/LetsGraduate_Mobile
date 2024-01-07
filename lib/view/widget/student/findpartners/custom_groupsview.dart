import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/student/findpartners_controller.dart';
import 'package:flutter_application_1/view/widget/student/custom_listtile.dart';
import 'package:flutter_application_1/view/widget/student/custom_trailing.dart';
import 'package:get/get.dart';

class CustomGroupsView extends StatelessWidget {
  const CustomGroupsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final groups = [
      {
        {
          "name": 'Omar Qaneer',
          "number": 11925044,
          "department": 'Computer Engineering',
          "email": 'omarqaner@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Nablus',
        },
        {
          "name": 'Jamal SaadEddin',
          "number": 12345678,
          "department": 'Computer Engineering',
          "email": 'jamal@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Nablus',
        }
      },
      {
        {
          "name": 'Obaida Aws',
          "number": 119236866,
          "department": 'Computer Engineering',
          "email": 'obaidaaws@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Jenin',
        },
        {
          "name": 'Abdallah Ads',
          "number": 11945177,
          "department": 'Computer Engineering',
          "email": 'abdallahads@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Jenin',
        },
      },
      {
        {
          "name": 'Omar Quzmar',
          "number": 11924055,
          "department": 'Computer Engineering',
          "email": 'omarquzmar@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Jenin',
        },
        {
          "name": 'Yahia Arafat',
          "number": 11825047,
          "department": 'Computer Engineering',
          "email": 'yahiaarafat@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Jenin',
        }
      }
    ];
    FindPartnerControllerImp controller = Get.put(FindPartnerControllerImp());
    return ListView.separated(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: groups.length,
      itemBuilder: (context, index) {
        final group = groups[index];
        return CustomListTileStudent(
          title: "Group ${index + 1}",
          subtitle: "${group.length} members",
          pageName: 'GroupsView',
          widget: const Icon(
            Icons.group,
            size: 35,
          ),
          trailing: CustomTrailing(
            onPressed1: () {
              controller.goToGrouptDetailsPage(group);
            },
            onPressed2: () {},
            buttonTwoText: 'Join Group',
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );
  }
}
