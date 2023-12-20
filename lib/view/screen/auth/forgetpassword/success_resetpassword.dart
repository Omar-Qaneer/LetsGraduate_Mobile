import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/auth/custommaterialbuttonauth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 110, bottom: 60),
              child: Text(
                "Success",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ),
            const Center(
              child: Icon(
                Icons.check_circle_sharp,
                size: 200,
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Registration complete!"),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomMaterialButtonAuth(
                text: "Start",
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
