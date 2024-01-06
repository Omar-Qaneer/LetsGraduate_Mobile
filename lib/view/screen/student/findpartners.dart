import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/student/findpartners_controller.dart';
import 'package:flutter_application_1/view/widget/student/findpartners/custom_groupsview.dart';
import 'package:flutter_application_1/view/widget/student/findpartners/custom_studentsview.dart';
import 'package:flutter_application_1/view/widget/student/findpartners/custom_tabbar_student.dart';
import 'package:flutter_application_1/view/widget/supervisor/customsearchbar.dart';
import 'package:get/get.dart';

class FindPartners extends StatelessWidget {
  const FindPartners({super.key});

  @override
  Widget build(BuildContext context) {
    final students = [
      {
        "name": 'Omar Qaneer',
        "number": 11925044,
        "department": 'Computer Engineering',
        "email": 'omarqaner@gmail.co',
        "mobileNumber": 05954698745,
        "address": 'Nablus',
        "isPressed": false,
      },
      {
        "name": 'Jamal SaadEddin',
        "number": 12345678,
        "department": 'Computer Engineering',
        "email": 'jamal@gmail.co',
        "mobileNumber": 05954698745,
        "address": 'Nablus',
        "isPressed": false,
      },
      {
        "name": 'Obaida Aws',
        "number": 98765432,
        "department": 'Computer Engineering',
        "email": 'obaidaaws@gmail.co',
        "mobileNumber": 05954698745,
        "address": 'Aqraba',
        "isPressed": false,
      },
      {
        "name": 'Abdallah Ads',
        "number": 98765432,
        "department": 'Computer Engineering',
        "email": 'abdallahads@gmail.co',
        "mobileNumber": 05954698745,
        "address": 'Tulkarem',
        "isPressed": false,
      },
      {
        "name": 'Omar Quzmar',
        "number": 98765432,
        "department": 'Computer Engineering',
        "email": 'omarquzmar@gmail.co',
        "mobileNumber": 05954698745,
        "address": 'Jenin',
        "isPressed": false,
      },
    ];
    FindPartnerControllerImp controller = Get.put(FindPartnerControllerImp());

    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // titles

            ...List.generate(3, (index) {
              final texts = [
                "Find Your Partners",
                "Here You can send request to create partnerships with other students",
                "Available Groups"
              ];
              List<double> fontSizes = [30, 14, 25];
              List<double> horizontalPaddings = [15, 20, 15];
              List<double> verticalPaddings = [5, 5, 15];
              List<Color> colors = [Colors.blue, Colors.black, Colors.blue];

              return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPaddings[index],
                    vertical: verticalPaddings[index]),
                child: Text(
                  texts[index],
                  style: TextStyle(
                      fontSize: fontSizes[index], color: colors[index]),
                ),
              );
            }),
            const CustomSearchBar(hintText: "Search by first or last name"),
            const SizedBox(
              height: 10,
            ),

            CustomTabBarStudent(
              widget: TabBar(
                isScrollable: true,
                labelPadding:
                    const EdgeInsetsDirectional.symmetric(horizontal: 60),
                controller: controller.findPartnerTabController,
                tabs: controller.findPartnersTabs,
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: TabBarView(
                  controller: controller.findPartnerTabController,
                  children: [
                    CustomStudentsView(students: students),
                    const CustomGroupsView()
                  ],
                ),
              ),
            ),
          ])),
    );
  }
}
