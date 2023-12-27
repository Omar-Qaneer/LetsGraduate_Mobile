import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentDetails extends StatelessWidget {
  const StudentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final student = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            //profile picture
            Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 24),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                      radius: 50,
                    ),
                  ),
                  Text(
                    student['name'],
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            TextFormField(
              initialValue: student['email'],
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
              enabled: false,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  labelText: "Email Address"),
            ),
            const SizedBox(
              height: 30,
            ),

            TextFormField(
              initialValue: student['number'].toString(),
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
              enabled: false,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                label: Text("Registression Number"),
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            TextFormField(
              initialValue: student['department'].toString(),
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
              enabled: false,
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                label: Text("Department"),
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            TextFormField(
              initialValue: student['address'].toString(),
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
              enabled: false,
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                label: Text("Address-City/Village"),
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            TextFormField(
              initialValue: student['mobileNumber'].toString(),
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
              enabled: false,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                label: Text("Mobile Number"),
              ),
            ),
            const SizedBox(
              height: 40,
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: MaterialButton(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.blue[800],
                  textColor: Colors.white,
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
