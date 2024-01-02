import 'package:flutter/material.dart';

class CustomAcceptAndDeclineButtons extends StatelessWidget {
  const CustomAcceptAndDeclineButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MaterialButton(
          height: 30,
          color: Colors.blue,
          textColor: Colors.white,
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
          onPressed: () {},
          child: const Text(
            "ACCEPT",
            style: TextStyle(fontSize: 12),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        MaterialButton(
          height: 30,
          color: Colors.white,
          textColor: Colors.black,
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () {},
          child: const Text(
            "DECLINE",
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
