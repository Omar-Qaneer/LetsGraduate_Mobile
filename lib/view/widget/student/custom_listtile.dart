import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/student/findpartners/custom_trailing.dart';

class CustomListTileStudent extends StatelessWidget {
  final String name;
  final String email;
  final String pageName;
  final Widget widget;
  final void Function()? onPressed1;
  final void Function()? onPressed2;
  const CustomListTileStudent({
    super.key,
    required this.name,
    required this.email,
    required this.widget,
    required this.pageName,
    this.onPressed1,
    this.onPressed2,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        child: widget,
      ),
      title: Text(
        name,
        style: TextStyle(
            fontSize: pageName == "MyPartners" ? 16 : 12,
            fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        email,
        style: const TextStyle(fontSize: 10),
      ),
      trailing: pageName == "MyPartners"
          ? const Icon(Icons.navigate_next)
          : CustomTrailing(
              onPressed1: onPressed1,
              onPressed2: onPressed2,
            ),
    );
  }
}
