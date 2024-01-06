import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/student/findpartners/custom_trailing.dart';

class CustomListTileStudent extends StatelessWidget {
  final String title;
  final String subtitle;
  final String pageName;
  final Widget widget;
  final void Function()? onPressed1;
  final void Function()? onPressed2;
  const CustomListTileStudent({
    super.key,
    required this.title,
    required this.subtitle,
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
        title,
        style: TextStyle(
            fontSize: pageName == "StudentsView" ? 12 : 16,
            fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitle,
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
