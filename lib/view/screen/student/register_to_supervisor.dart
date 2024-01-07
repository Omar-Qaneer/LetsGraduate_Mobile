import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/student/custom_listtile.dart';
import 'package:flutter_application_1/view/widget/student/findpartners/custom_trailing.dart';

class RegisterToSupervisor extends StatelessWidget {
  const RegisterToSupervisor({super.key});

  @override
  Widget build(BuildContext context) {
    final supervisors = [
      {
        'name': 'Dr. Abdalla Rashed',
        'department': 'Computer Engineering',
        'email': 'abdallah@gmail.com',
        'expertise': 'Artificial Intelligence',
        'researchAreas': ['Machine Learning', 'Natural Language Processing'],
      },
      {
        'name': 'Dr. Aladdin Masri',
        'department': 'Computer Engineering',
        'email': 'aladdin@gmail.com',
        'expertise': 'Software Engineering',
        'researchAreas': ['Cloud Computing', 'Distributed Systems'],
      },
    ];

    // final rows = [
    //   const DataRow(cells: [
    //     DataCell(Text('Dr. Abdalla Rashed')),
    //   ]),
    //   const DataRow(cells: [
    //     DataCell(Text('Dr. Aladdin Masri')),
    //   ]),
    //   const DataRow(cells: [
    //     DataCell(Text('Dr. Amjad Abu-Hassan')),
    //   ]),
    // ];

    // final List<Map<String, dynamic>> supervisors = [
    //   {
    //     'name': 'Dr. Abdalla Rashed',
    //     'requestSupervising': true,
    //   },
    //   {
    //     'name': 'Dr. Aladdin Masri',
    //     'requestSupervising': false,
    //   },
    //   {
    //     'name': 'Dr. Amjad Abu-Hassan',
    //     'requestSupervising': false,
    //   },
    // ];

    // final rows = List.generate(
    //   supervisors.length,
    //   (index) => DataRow(
    //     cells: [
    //       DataCell(Text(supervisors[index]['name'])),
    //       DataCell(MaterialButton(
    //               shape: OutlineInputBorder(
    //                   borderRadius: BorderRadius.circular(20)),
    //               color: Colors.blue,
    //               onPressed: () {},
    //               child: const Row(
    //                 children: [
    //                   Text(
    //                     "Send Registration",
    //                     style: TextStyle(color: Colors.white),
    //                   ),
    //                   SizedBox(
    //                     width: 10,
    //                   ),
    //                   Icon(Icons.send)
    //                 ],
    //               ))
    //           //   IconButton(
    //           //     onPressed: () {
    //           //       // handle request supervising action
    //           //     },
    //           //     icon: Icon(supervisors[index]['requestSupervising']
    //           //         ? Icons.check_box
    //           //         : Icons.check_box_outline_blank),
    //           //   ),
    //           ),
    //     ],
    //   ),
    // );

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
                    onPressed1: () {},
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
