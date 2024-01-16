import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/department_head/department_head_homescreen_controller.dart';
import 'package:get/get.dart';

class CustomNavBarDepartmentHead extends StatelessWidget {
  const CustomNavBarDepartmentHead({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DepartmentHeadHomeScreenControllerImp());
    return GetBuilder<DepartmentHeadHomeScreenControllerImp>(
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
            const SizedBox(
              height: 30,
            ),
            ListTile(
              leading: const Icon(Icons.assignment_add),
              title: const Text("Project1 requirements"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.assignment_add),
              title: const Text("Project2 requirements"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.groups),
              title: const Text("Groups"),
              subtitle: const Text("Information & Details"),
              onTap: () {
                controller.changePage(1);
              },
            ),
            ListTile(
              leading: const Icon(Icons.timer_outlined),
              title: const Text("Set Deadlines"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Sign Out"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
