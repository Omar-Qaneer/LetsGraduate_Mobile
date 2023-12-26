import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/supervisor/customtextsupervisor.dart';

class SupervisorGroups extends StatelessWidget {
  const SupervisorGroups({super.key});

  @override
  Widget build(BuildContext context) {
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
      ],
    );
  }
}
