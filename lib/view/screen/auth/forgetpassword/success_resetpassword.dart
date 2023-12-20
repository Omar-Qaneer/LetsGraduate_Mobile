import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/auth/custommaterialbuttonauth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Success"),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: const Column(
          children: [
            Center(
              child: Icon(
                Icons.check_circle_sharp,
                size: 200,
                color: Colors.green,
              ),
            ),
            Text("Registration complete!"),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomMaterialButtonAuth(text: "Start"),
            )
          ],
        ),
      ),
    );
  }
}
