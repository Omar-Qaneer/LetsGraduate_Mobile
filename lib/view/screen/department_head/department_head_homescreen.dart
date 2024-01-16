import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/department_head/department_head_homescreen_controller.dart';
import 'package:get/get.dart';

class DepartmentHeadHomeScreen extends StatelessWidget {
  const DepartmentHeadHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DepartmentHeadHomeScreenControllerImp());
    int selectedIndex = 0;
    return GetBuilder<DepartmentHeadHomeScreenControllerImp>(
        builder: (controller) => Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                  currentIndex: selectedIndex,
                  onTap: (value) {
                    selectedIndex = value;
                    controller.changePage(value);
                  },
                  backgroundColor: Colors.blue,
                  selectedItemColor: Colors.black,
                  unselectedItemColor: Colors.white,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.group),
                      label: "Groups",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.timer),
                      label: "Deadlines",
                    ),
                  ]),
              appBar: AppBar(
                title: const Text(
                  "Let's Graduate",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.blue,
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.account_circle,
                        size: 40,
                      )),
                ],
              ),
              body: controller.listPage.elementAt(controller.currentPage),
            ));
  }
}
