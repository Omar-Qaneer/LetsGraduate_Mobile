import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/student/register_to_supervisor_controller.dart';
import 'package:flutter_application_1/view/widget/student/custom_listtile.dart';
import 'package:flutter_application_1/view/widget/student/custom_trailing.dart';
import 'package:get/get.dart';

class RegisterToSupervisor extends StatelessWidget {
  const RegisterToSupervisor({super.key});

  @override
  Widget build(BuildContext context) {
    final supervisors = [
      {
        "name": 'Dr. Abdalla Rashed',
        "number": '1394',
        "department": 'Computer Engineering',
        "email": 'abdallah@gmail.com',
        "address": 'Jenin',
        "mobileNumber": '0564874125',
        "expertise": 'Artificial Intelligence',
        "researchAreas": ['Machine Learning', 'Natural Language Processing'],
      },
      {
        "name": 'Dr. Aladdin Masri',
        "number": '1355',
        "department": 'Computer Engineering',
        "email": 'aladdin@gmail.com',
        "address": 'Nablus',
        "mobileNumber": '0598745987',
        "expertise": 'Software Engineering',
        "researchAreas": ['Cloud Computing', 'Distributed Systems'],
      },
    ];

    RegisterToSupervisorControllerImp controller =
        Get.put(RegisterToSupervisorControllerImp());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // titles
            ...List.generate(3, (index) {
              final texts = [
                "Choose Your Supervisor",
                "Send request to one of supervisors to supervise your group during the semester",
                "Available Supervisors"
              ];
              List<double> fontSizes = [30, 16, 25];
              List<Color> colors = [Colors.blue, Colors.black, Colors.blue];

              return Padding(
                padding: EdgeInsets.symmetric(
                    vertical: (index + 1) * 5, horizontal: 12),
                child: Text(
                  texts[index],
                  style: TextStyle(
                      fontSize: fontSizes[index], color: colors[index]),
                ),
              );
            }),

            ListView.separated(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: supervisors.length,
              itemBuilder: (context, index) {
                final supervisor = supervisors[index];
                return CustomListTileStudent(
                  title: supervisor['name'].toString(),
                  subtitle: supervisor['email'].toString(),
                  widget: const Icon(
                    Icons.account_circle,
                    size: 40,
                  ),
                  pageName: 'RegisterToSupervisor',
                  trailing: CustomTrailing(
                    buttonTwoText: "Send Request",
                    onPressed1: () {
                      controller.goToSupervisorDetailsPage(supervisor);
                    },
                    onPressed2: () {},
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            ),
          ],
        ),
      ),
    );
  }
}
