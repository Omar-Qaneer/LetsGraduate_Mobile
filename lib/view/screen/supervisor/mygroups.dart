import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/supervisor/customlisttilesupervisor.dart';
import 'package:flutter_application_1/view/widget/supervisor/customtextsupervisor.dart';

class SupervisorGroups extends StatelessWidget {
  const SupervisorGroups({super.key});

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
    return ListView(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 30, bottom: 15),
          child: const CustomTextSupervisor(
            text: "My Groups",
            fontSize: 30,
            horizontalPadding: 15,
            verticalPadding: 5,
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          itemCount: groups.length,
          itemBuilder: (context, index) {
            return CustomListTileSupervisor(index: index, groups: groups);
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
        ),
      ],
    );
  }
}
