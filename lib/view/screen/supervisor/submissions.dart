import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/supervisor/customrowsupervisor.dart';

class Submissions extends StatelessWidget {
  const Submissions({super.key});

  @override
  Widget build(BuildContext context) {
    int notSubmitted = 3;
    int submitted = 3;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView(
        children: [
          CustomRowSupervisor(
            pageName: 'Submissions',
            labelFirstButton: 'Not Submitted: ',
            textFirstButton: '$notSubmitted',
            labelSecondButton: 'Submitted',
            textSecondButton: '$submitted',
          ),
        ],
      ),
    );
  }
}
