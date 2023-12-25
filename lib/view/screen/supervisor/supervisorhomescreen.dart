import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/supervisor/supervisorhomescreen_controller.dart';
import 'package:get/get.dart';

class SupervisorHomeScreen extends StatelessWidget {
  const SupervisorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SupervisorHomeScreenControllerImp());
    int selectedIndex = 0;
    return GetBuilder<SupervisorHomeScreenControllerImp>(
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
                      label: "MyGroups",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: "Setting",
                    ),
                  ]),
              appBar: AppBar(
                title: const Text("Let's Graduate"),
                actions: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.notifications)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.account_circle)),
                ],
              ),
              body: controller.listPage.elementAt(controller.currentPage),
            ));
  }
}
