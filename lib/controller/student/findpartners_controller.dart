import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class FindPartnerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  void findPartners();
  void setPageIndex(int newIndex);
}

class FindPartnerControllerImp extends FindPartnerController {
  final List<Tab> findPartnersTabs = <Tab>[
    const Tab(
      icon: Icon(
        Icons.person,
      ),
      text: "Students",
    ),
    const Tab(
        icon: Icon(
          Icons.groups_rounded,
        ),
        text: "Groups"),
  ];

  late TabController findPartnerTabController;
  int currentPageIndex = 0;

  @override
  findPartners() {}

  @override
  void onInit() {
    findPartnerTabController =
        TabController(vsync: this, length: findPartnersTabs.length);
    super.onInit();
  }

  @override
  void onClose() {
    findPartnerTabController.dispose();
    super.onClose();
  }

  @override
  void setPageIndex(int newIndex) {
    currentPageIndex = newIndex;
    update();
  }
}
