import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/supervisor/customtextsupervisor.dart';
import 'package:get/get.dart';

class GroupDetails extends StatelessWidget {
  const GroupDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final group = Get.arguments;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Group Members"),
          centerTitle: true,
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // titles
                  const CustomTextSupervisor(
                    text: "Click to see member details",
                    fontSize: 25,
                    horizontalPadding: 15,
                    verticalPadding: 5,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                        prefixIcon: const Icon(Icons.search),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                        hintText: "Search by first or last name",
                      ),
                    ),
                  ),

                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: group.length,
                    itemBuilder: (context, index) {
                      final student = group.elementAt(index);
                      return InkWell(
                        onTap: () {},
                        child: ListTile(
                          leading: const CircleAvatar(
                            backgroundColor: Color(0xff764abc),
                            // child: Text(student[index]),
                          ),
                          title: Text(
                            student['name'].toString(),
                            style: const TextStyle(fontSize: 16),
                          ),
                          subtitle: Row(
                            children: [
                              const Icon(Icons.person),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                student['email'].toString(),
                                style: const TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          trailing: const Icon(Icons.navigate_next),
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
