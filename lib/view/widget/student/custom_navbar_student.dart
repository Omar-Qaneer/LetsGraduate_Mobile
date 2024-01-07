import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/student/student_homescreen_controller.dart';
import 'package:get/get.dart';

class CustomNavBarStudent extends StatelessWidget {
  const CustomNavBarStudent({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(StudentHomeScreenControllerImp());
    return GetBuilder<StudentHomeScreenControllerImp>(
        builder: (controller) => Drawer(
              child: ListView(
                children: [
                  const UserAccountsDrawerHeader(
                    accountName: Text("Omar Qaneer"),
                    accountEmail: Text("omarqaneer@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      child: ClipOval(
                          child: Icon(
                        Icons.account_circle,
                        size: 70,
                      )),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.account_circle),
                    title: const Text("Profile"),
                    onTap: () {
                      controller.changePage(3);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications),
                    title: const Text("Notifications"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.connect_without_contact),
                    title: const Text("Find partners"),
                    onTap: () {
                      controller.changePage(4);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.supervised_user_circle_sharp),
                    title: const Text("Register to a Supervisor"),
                    onTap: () {
                      controller.changePage(6);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.lightbulb_circle),
                    title: const Text("My Project"),
                    subtitle: const Text("Information & Details"),
                    onTap: () {
                      controller.changePage(5);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.picture_as_pdf),
                    title: const Text("Submissions"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text("Settings"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text("Sign Out"),
                    onTap: () {},
                  ),
                ],
              ),
            ));
  }
}
