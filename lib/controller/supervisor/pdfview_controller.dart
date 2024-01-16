import 'package:get/get.dart';
import 'package:pdfx/pdfx.dart';

abstract class PdfViewController extends GetxController {}

class PdfViewControllerImp extends PdfViewController {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void onInit() {
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset("assets/pdfs/Lab1-v2.pdf"));
    super.onInit();
  }
}
