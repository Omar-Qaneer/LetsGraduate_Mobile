import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/student/findpartners_controller.dart';
import 'package:flutter_application_1/view/widget/student/custom_tabbar_student.dart';
import 'package:flutter_application_1/view/widget/supervisor/customsearchbar.dart';
import 'package:get/get.dart';

class FindPartners extends StatelessWidget {
  const FindPartners({super.key});

  @override
  Widget build(BuildContext context) {
    FindPartnerControllerImp controller = Get.put(FindPartnerControllerImp());

    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // titles

            ...List.generate(3, (index) {
              final texts = [
                "Find Your Partners",
                "Here You can send request to create partnerships with other students",
                "Available Groups"
              ];
              List<double> fontSizes = [30, 14, 25];
              List<double> horizontalPaddings = [15, 20, 15];
              List<double> verticalPaddings = [5, 10, 15];
              List<Color> colors = [Colors.blue, Colors.black, Colors.blue];

              return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: horizontalPaddings[index],
                    vertical: verticalPaddings[index]),
                child: Text(
                  texts[index],
                  style: TextStyle(
                      fontSize: fontSizes[index], color: colors[index]),
                ),
              );
            }),
            const CustomSearchBar(hintText: "Search by first or last name"),
            const SizedBox(
              height: 15,
            ),

            CustomTabBarStudent(
              widget: TabBar(
                isScrollable: true,
                labelPadding:
                    const EdgeInsetsDirectional.symmetric(horizontal: 60),
                controller: controller.findPartnerTabController,
                tabs: controller.findPartnersTabs,
              ),
            ),

            Expanded(
              child: TabBarView(
                controller: controller.findPartnerTabController,
                children: const [
                  Text("Students"),
                  Text("Groups"),
                ],
              ),
            ),
          ])),
    );
  }
}
