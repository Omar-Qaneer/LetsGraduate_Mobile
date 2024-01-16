import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/supervisor/pdfview_controller.dart';
import 'package:get/get.dart';
import 'package:pdfx/pdfx.dart';

class ViewAbstract extends StatelessWidget {
  const ViewAbstract({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PdfViewControllerImp());

    return Scaffold(
        appBar: AppBar(
          title: const Text("Abstract View"),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              GetBuilder<PdfViewControllerImp>(
                builder: (controller) {
                  return Expanded(
                      child: PdfViewPinch(
                          controller: controller.pdfControllerPinch));
                },
              )
            ],
          ),
        ));
  }
}
