import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/student/mypartners_controller.dart';
import 'package:flutter_application_1/view/widget/student/custom_listtile.dart';
import 'package:get/get.dart';

class MyPartners extends StatelessWidget {
  const MyPartners({super.key});

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
    MyPartnersControllerImp controller = Get.put(MyPartnersControllerImp());
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Partners"),
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: ListView(children: [
              // titles
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Text(
                  "Click to see member details",
                  style: TextStyle(fontSize: 25, color: Colors.blue),
                ),
              ),

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
                      name: student['name'].toString(),
                      email: student['email'].toString(),
                      widget: const Icon(
                        Icons.account_circle,
                        size: 45,
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              )
            ])));
  }
}
