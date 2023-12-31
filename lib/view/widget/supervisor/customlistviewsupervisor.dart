import 'package:flutter/material.dart';

class CustomListViewSupervisor extends StatelessWidget {
  final dynamic groups;
  final Color containerColor;
  final Color textColor;
  final String pageName;

  const CustomListViewSupervisor(
      {super.key,
      required this.groups,
      required this.containerColor,
      required this.textColor,
      required this.pageName});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: groups.length,
      itemBuilder: (context, index) {
        final group = groups[index];
        final supervisorObject = group.elementAt(0);
        final supervisorName = supervisorObject['supervisorName'].toString();
        final projectObject = group.elementAt(1);
        final projectName = projectObject['projectName'].toString();
        final student = group.elementAt(3);
        final submissionStatus = group.elementAt(2);
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Card(
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {},
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: containerColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        )),
                    width: 10,
                    height: 60,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Group $index",
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        Text((pageName == "Submissions"
                            ? projectName
                            : supervisorName))
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal:
                            student['evaluateStatus'].toString() == "Evaluated"
                                ? 50
                                : 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Status",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        Text(
                          pageName == "Submissions"
                              ? submissionStatus['submissionStatus'].toString()
                              : student['evaluateStatus'].toString(),
                          style: TextStyle(color: textColor),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
