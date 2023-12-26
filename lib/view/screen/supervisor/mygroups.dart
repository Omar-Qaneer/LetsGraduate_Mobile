import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/supervisor/customtextsupervisor.dart';
import 'package:flutter_application_1/view/widget/supervisor/customtrailingsupervisor.dart';

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
            final group = groups[index];
            final String groupLength = group.length.toString();
            return ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: const Color(0xff764abc),
                child: Text(
                  group.elementAt(0)['name'].toString().substring(0, 1),
                  style: const TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              title: Text(
                "Group $index",
                style: const TextStyle(fontSize: 16),
              ),
              subtitle: Row(
                children: [
                  const Icon(Icons.groups),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "$groupLength members",
                    style: const TextStyle(fontSize: 10),
                  ),
                ],
              ),
              trailing: CustomTrailingSupervisor(index: index, group: group),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
        ),
      ],
    );
  }
}
