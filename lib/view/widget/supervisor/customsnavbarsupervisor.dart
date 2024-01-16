import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/supervisor/supervisorhomescreen_controller.dart';
import 'package:get/get.dart';

class CustomNavBarSupervisor extends StatelessWidget {
  const CustomNavBarSupervisor({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SupervisorHomeScreenControllerImp());
    return GetBuilder<SupervisorHomeScreenControllerImp>(
        builder: (controller) => Drawer(
              child: ListView(
                children: [
                  const UserAccountsDrawerHeader(
                    accountName: Text("Dr. Aladdin Masri"),
                    accountEmail: Text("aladdin@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      child: ClipOval(
                          child: Icon(
                        Icons.account_circle,
                        size: 70,
                      )),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.account_circle),
                    title: const Text("Profile"),
                    onTap: () {
                      controller.changePage(6);
                      controller.listPage.elementAt(controller.currentPage);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications),
                    title: const Text("Notifications"),
                    onTap: () {
                      controller.changePage(5);
                      controller.listPage.elementAt(controller.currentPage);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.track_changes_outlined),
                    title: const Text("Department managements"),
                    onTap: () {
                      controller.goToDepartmentHeadHomescreen();
                    },
                  ),
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Track Groups",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.group_sharp),
                    title: const Text("My Groups"),
                    subtitle: const Text("Information & Details"),
                    onTap: () {
                      controller.changePage(1);
                      controller.listPage.elementAt(controller.currentPage);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.picture_as_pdf),
                    title: const Text("Submissions"),
                    onTap: () {
                      controller.changePage(4);
                      controller.listPage.elementAt(controller.currentPage);
                    },
                  ),
                  const Divider(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Evaluate Groups",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.grading_sharp),
                    title: const Text("Evaluate Abstracts"),
                    onTap: () {
                      controller.changePage(3);
                      controller.listPage.elementAt(controller.currentPage);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.checklist_outlined),
                    title: const Text("Evaluate MyGroups"),
                    onTap: () {
                      controller.changePage(7);
                      controller.listPage.elementAt(controller.currentPage);
                    },
                  ),
                  const Divider(),
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
