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
            child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  // titles
                  CustomTextSupervisor(
                    text: "Click to see member details",
                    fontSize: 25,
                    horizontalPadding: 15,
                    verticalPadding: 5,
                  ),

                  CustomSearchBar(hintText: "Search by first or last name")
                ])));
  }
}
