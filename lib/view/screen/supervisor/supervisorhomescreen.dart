import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/supervisor/supervisorhomescreen_controller.dart';
import 'package:flutter_application_1/view/widget/supervisor/customsnavbarsupervisor.dart';
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
                      icon: Icon(
                        Icons.groups,
                        size: 30,
                      ),
                      label: "MyGroups",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: "Setting",
                    ),
                  ]),
              drawer: const CustomNavBarSupervisor(),
              appBar: AppBar(
                title: const Text(
                  "Let's Graduate",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.blue,
                elevation: 0.0,
                actions: [
                  IconButton(
                      onPressed: () {
                        controller.changePage(5);
                      },
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {
                        controller.changePage(6);
                      },
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
