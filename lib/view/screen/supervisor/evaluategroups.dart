import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/supervisor/evaluategroups_controller.dart';
import 'package:flutter_application_1/view/widget/supervisor/customlistviewsupervisor.dart';
import 'package:flutter_application_1/view/widget/supervisor/customrowsupervisor.dart';
import 'package:get/get.dart';

class EvaluateGroups extends StatelessWidget {
  const EvaluateGroups({super.key});

  @override
  Widget build(BuildContext context) {
    final notEvaluatedGroups = [
      {
        {"supervisorName": "Abdallah Rashed"},
        {
          "name": 'Obaida Aws',
          "number": 119236866,
          "department": 'Computer Engineering',
          "email": 'obaidaaws@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Aqraba',
          "evaluateStatus": "Not Evaluated",
        },
        {
          "name": 'Abdallah Ads',
          "number": 11945177,
          "department": 'Computer Engineering',
          "email": 'abdallahads@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Tulkarm',
          "evaluateStatus": "Not Evaluated",
        },
      },
      {
        {"supervisorName": "Haya Samaana"},
        {
          "name": 'Ahmad Majed',
          "number": 11924055,
          "department": 'Computer Engineering',
          "email": 'ahmadmajed@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Jenin',
          "evaluateStatus": "Not Evaluated",
        },
        {
          "name": 'mohammad zaid',
          "number": 11825047,
          "department": 'Computer Engineering',
          "email": 'mohammadzaid@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'tulkarm',
          "evaluateStatus": "Not Evaluated",
        }
      },
      {
        {"supervisorName": "Amjad AbuHassan"},
        {
          "name": 'Rami Mani',
          "number": 11924055,
          "department": 'Computer Engineering',
          "email": 'ramimani@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Nablus',
          "evaluateStatus": "Not Evaluated",
        },
        {
          "name": 'mohammad polas',
          "number": 11825047,
          "department": 'Computer Engineering',
          "email": 'mohammadpolas@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Nablus',
          "evaluateStatus": "Not Evaluated",
        }
      },
    ];
    final evaluatedGroups = [
      {
        {"supervisorName": "Aladdin Masri"},
        {
          "name": 'Omar Quzmar',
          "number": 11924055,
          "department": 'Computer Engineering',
          "email": 'omarquzmar@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Jenin',
          "evaluateStatus": "Evaluated",
        },
        {
          "name": 'Yahia Arafat',
          "number": 11825047,
          "department": 'Computer Engineering',
          "email": 'yahiaarafat@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Asira',
          "evaluateStatus": "Evaluated",
        }
      },
      {
        {"supervisorName": "Samer Arandi"},
        {
          "name": 'Noor-Aldeen Abu-Shehadeh',
          "number": 11924055,
          "department": 'Computer Engineering',
          "email": 'nooraldeen@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Hwara',
          "evaluateStatus": "Evaluated",
        },
        {
          "name": 'Momen Odeh',
          "number": 11825047,
          "department": 'Computer Engineering',
          "email": 'momenodeh@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Hwara',
          "evaluateStatus": "Evaluated",
        }
      },
      {
        {"supervisorName": "Manar Qamhieh"},
        {
          "name": 'Omar Qaneer',
          "number": 11925044,
          "department": 'Computer Engineering',
          "email": 'omarqaner@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Nablus',
          "evaluateStatus": "Evaluated",
        },
        {
          "name": 'Jamal SaadEddin',
          "number": 12345678,
          "department": 'Computer Engineering',
          "email": 'jamal@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Nablus',
          "evaluateStatus": "Evaluated",
        }
      },
      {
        {"supervisorName": "Aladdin Masri"},
        {
          "name": 'Omar Quzmar',
          "number": 11924055,
          "department": 'Computer Engineering',
          "email": 'omarquzmar@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Jenin',
          "evaluateStatus": "Evaluated",
        },
        {
          "name": 'Yahia Arafat',
          "number": 11825047,
          "department": 'Computer Engineering',
          "email": 'yahiaarafat@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Asira',
          "evaluateStatus": "Evaluated",
        }
      },
      {
        {"supervisorName": "Samer Arandi"},
        {
          "name": 'Noor-Aldeen Abu-Shehadeh',
          "number": 11924055,
          "department": 'Computer Engineering',
          "email": 'nooraldeen@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Hwara',
          "evaluateStatus": "Evaluated",
        },
        {
          "name": 'Momen Odeh',
          "number": 11825047,
          "department": 'Computer Engineering',
          "email": 'momenodeh@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Hwara',
          "evaluateStatus": "Evaluated",
        }
      },
      {
        {"supervisorName": "Manar Qamhieh"},
        {
          "name": 'Omar Qaneer',
          "number": 11925044,
          "department": 'Computer Engineering',
          "email": 'omarqaner@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Nablus',
          "evaluateStatus": "Evaluated",
        },
        {
          "name": 'Jamal SaadEddin',
          "number": 12345678,
          "department": 'Computer Engineering',
          "email": 'jamal@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Nablus',
          "evaluateStatus": "Evaluated",
        }
      },
      {
        {"supervisorName": "Aladdin Masri"},
        {
          "name": 'Omar Quzmar',
          "number": 11924055,
          "department": 'Computer Engineering',
          "email": 'omarquzmar@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Jenin',
          "evaluateStatus": "Evaluated",
        },
        {
          "name": 'Yahia Arafat',
          "number": 11825047,
          "department": 'Computer Engineering',
          "email": 'yahiaarafat@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Asira',
          "evaluateStatus": "Evaluated",
        }
      },
      {
        {"supervisorName": "Samer Arandi"},
        {
          "name": 'Noor-Aldeen Abu-Shehadeh',
          "number": 11924055,
          "department": 'Computer Engineering',
          "email": 'nooraldeen@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Hwara',
          "evaluateStatus": "Evaluated",
        },
        {
          "name": 'Momen Odeh',
          "number": 11825047,
          "department": 'Computer Engineering',
          "email": 'momenodeh@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Hwara',
          "evaluateStatus": "Evaluated",
        }
      },
      {
        {"supervisorName": "Manar Qamhieh"},
        {
          "name": 'Omar Qaneer',
          "number": 11925044,
          "department": 'Computer Engineering',
          "email": 'omarqaner@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Nablus',
          "evaluateStatus": "Evaluated",
        },
        {
          "name": 'Jamal SaadEddin',
          "number": 12345678,
          "department": 'Computer Engineering',
          "email": 'jamal@gmail.co',
          "mobileNumber": 05954698745,
          "address": 'Nablus',
          "evaluateStatus": "Evaluated",
        }
      },
    ];
    Get.put(EvaluateGroupsControllerImp());
    int notEvaluated = 3;
    int evaluated = 3;

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GetBuilder<EvaluateGroupsControllerImp>(
          builder: (controller) => ListView(
            children: [
              CustomRowSupervisor(
                labelFirstButton: 'Not Evaluated: ',
                textFirstButton: '$notEvaluated',
                labelSecondButton: 'Evaluated: ',
                textSecondButton: '$evaluated',
                firstButtonColor: controller.buttonColorProperty(0),
                firstButtonTextColor: controller.buttonColorProperty(1),
                secondButtonColor: controller.buttonColorProperty(2),
                secondButtonTextColor: controller.buttonColorProperty(3),
                onPressed1: () {
                  controller.setSelectedButton(0);
                },
                onPressed2: () {
                  controller.setSelectedButton(1);
                },
              ),
              Visibility(
                  child: CustomListViewSupervisor(
                containerColor: controller.evaluteGroupsSelectedButton == 1
                    ? Colors.green
                    : Colors.orange,
                textColor: controller.evaluteGroupsSelectedButton == 1
                    ? Colors.blue
                    : Colors.red,
                groups: controller.evaluteGroupsSelectedButton == 1
                    ? evaluatedGroups
                    : notEvaluatedGroups,
              )),
            ],
          ),
        ));
  }
}
