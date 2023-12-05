import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/localization/changelocal.dart';
import 'package:flutter_application_1/core/localization/translation.dart';
import 'package:flutter_application_1/core/services/services.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:flutter_application_1/view/screen/language.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        // textTheme: const TextTheme(
        //   headline1: TextStyle(
        //     fontWeight: FontWeight.bold,
        //     fontSize: 22,
        //     color: Colors.black
        //   )
        // )
      ),
      home: const Language(),
      routes: routes,
    );
  }
}
