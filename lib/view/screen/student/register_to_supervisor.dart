import 'package:flutter/material.dart';

class RegisterToSupervisor extends StatelessWidget {
  const RegisterToSupervisor({super.key});

  @override
  Widget build(BuildContext context) {
    // final data = [
    //   {
    //     'name': 'Dr. Abdalla Rashed',
    //     'department': 'Computer Engineering',
    //     'email': 'abdallah@gmail.com',
    //     'expertise': 'Artificial Intelligence',
    //     'researchAreas': ['Machine Learning', 'Natural Language Processing'],
    //   },
    //   {
    //     'name': 'Dr. Aladdin Masri',
    //     'department': 'Computer Engineering',
    //     'email': 'aladdin@gmail.com',
    //     'expertise': 'Software Engineering',
    //     'researchAreas': ['Cloud Computing', 'Distributed Systems'],
    //   },
    // ];

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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
              List<double> verticalPaddings = [5, 15, 15];
              List<Color> colors = [Colors.blue, Colors.black, Colors.blue];

              return Padding(
                padding:
                    EdgeInsets.symmetric(vertical: verticalPaddings[index]),
                child: Text(
                  texts[index],
                  style: TextStyle(
                      fontSize: fontSizes[index], color: colors[index]),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
