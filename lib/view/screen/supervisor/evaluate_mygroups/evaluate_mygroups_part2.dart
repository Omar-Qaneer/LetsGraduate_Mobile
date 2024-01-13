import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constant/imageasset.dart';
import 'package:get/get.dart';

class EvaluateMyGroupsPart2 extends StatelessWidget {
  const EvaluateMyGroupsPart2({super.key});

  @override
  Widget build(BuildContext context) {
    final group = Get.arguments;
    final projectObject = group.elementAt(0);
    final projectName = projectObject['projectName'].toString();
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            //profile picture
            Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: const CircleAvatar(
                      radius: 70,
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 60,
                          child: Icon(
                            Icons.group,
                            size: 100,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: Text(
                      projectName,
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
                height: 350,
                child: Image.asset(
                  AppImageAsset.evaluation,
                  fit: BoxFit.fill,
                )),

            const SizedBox(
              height: 40,
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 50),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
                onPressed: () {},
                child: const Text("Pass"),
              ),
              MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none),
                  onPressed: () {},
                  child: const Text("FAIL")),
            ]),
          ],
        ),
      ),
    );
  }
}
