import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/supervisor/evaluategroups_controller.dart';
import 'package:get/get.dart';
import 'package:pdfx/pdfx.dart';

class ViewPdfDocument extends StatelessWidget {
  const ViewPdfDocument({super.key});

  @override
  Widget build(BuildContext context) {
    EvaluateGroupsControllerImp controller =
        Get.put(EvaluateGroupsControllerImp());

    return Scaffold(
        appBar: AppBar(
          title: const Text("PDF View"),
        ),
        body: Column(
          children: [
            Expanded(
                child: PdfViewPinch(controller: controller.pdfControllerPinch))
          ],
        ));
  }
}
