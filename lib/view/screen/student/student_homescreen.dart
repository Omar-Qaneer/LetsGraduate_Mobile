import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/student/student_homescreen_controller.dart';
import 'package:flutter_application_1/view/widget/student/custom_navbar_student.dart';
import 'package:get/get.dart';

class StudentHomeScreen extends StatelessWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(StudentHomeScreenControllerImp());
    int selectedIndex = 0;
    return GetBuilder<StudentHomeScreenControllerImp>(
        builder: (controller) => Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                  currentIndex: selectedIndex,
                  onTap: (value) {
                    selectedIndex = value;
                    controller.changePage(value);
                  },
                  backgroundColor: Colors.green,
                  selectedItemColor: Colors.black,
                  unselectedItemColor: Colors.grey[400],
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.groups,
                        size: 35,
                      ),
                      label: "My partners",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: "Setting",
                    ),
                  ]),
              drawer: const CustomNavBarStudent(),
              appBar: AppBar(
                title: const Text("Let's Graduate"),
                backgroundColor: Colors.green,
                elevation: 0.0,
                centerTitle: true,
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {
                        controller.changePage(3);
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
