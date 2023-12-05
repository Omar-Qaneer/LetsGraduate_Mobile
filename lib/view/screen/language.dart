import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/routes.dart';
import 'package:flutter_application_1/core/localization/changelocal.dart';
import 'package:flutter_application_1/view/widget/language/custombuttomlang.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonLang(
              textbutton: 'Ar',
              onPressed: () {
                controller.changeLang("ar");
                Get.toNamed(AppRoute.login);
              },
            ),
            CustomButtonLang(
              textbutton: 'En',
              onPressed: () {
                controller.changeLang("en");
                Get.toNamed(AppRoute.login);
              },
            )
          ],
        ),
      ),
    );
  }
}
