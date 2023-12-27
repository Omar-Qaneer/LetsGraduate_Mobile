import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/supervisor/customsearchbar.dart';
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
            child: ListView(children: [
              // titles
              const CustomTextSupervisor(
                text: "Click to see member details",
                fontSize: 25,
                horizontalPadding: 15,
                verticalPadding: 5,
              ),

              const CustomSearchBar(hintText: "Search by first or last name"),

              ListView.separated(
                shrinkWrap: true,
                itemCount: group.length,
                itemBuilder: (context, index) {
                  final student = group.elementAt(index);
                  return InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: const Color(0xff764abc),
                          child: Text(
                              student['name'].toString().substring(0, 1),
                              style: const TextStyle(
                                  fontSize: 25, color: Colors.white))),
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
