import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/student/myproject_controller.dart';
import 'package:flutter_application_1/view/widget/student/custom_listtile.dart';
import 'package:get/get.dart';

class MyProject extends StatelessWidget {
  const MyProject({super.key});

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
    MyProjectControllerImp controller = Get.put(MyProjectControllerImp());

    return Scaffold(
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          // titles
          ...List.generate(3, (index) {
            final texts = [
              "Mohito Maker Machine",
              "Computer Engineering - Graduion Project 1",
              "My Partners"
            ];
            List<double> fontSizes = [30, 14, 20];
            List<double> horizontalPaddings = [10, 20, 10];
            List<double> verticalPaddings = [5, 5, 15];
            List<Color> colors = [Colors.blue, Colors.black, Colors.blue];

            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPaddings[index],
                  vertical: verticalPaddings[index]),
              child: Text(
                texts[index],
                style:
                    TextStyle(fontSize: fontSizes[index], color: colors[index]),
              ),
            );
          }),
          // show partners
          ListView.separated(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: students.length,
            itemBuilder: (context, index) {
              final student = students[index];
              return InkWell(
                onTap: () {
                  controller.goToStudentDetailsPage(student);
                },
                child: CustomListTileStudent(
                  title: student['name'].toString(),
                  subtitle: student['email'].toString(),
                  widget: const Icon(
                    Icons.account_circle,
                    size: 45,
                  ),
                  pageName: 'MyPartners',
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
          ),
          //supervisor section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Text(
              "My Supervisor",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),

          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Table(
                border: TableBorder.all(width: 2, color: Colors.blue),
                children: const [
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Supervisor Name'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Department'),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        child: Text('Email'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Mobile Number'),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'DR.Manar Qamhiee',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Computer Engineering',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                        child: Text(
                          'manarqamhiee@gmail.com',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '0594251789',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
