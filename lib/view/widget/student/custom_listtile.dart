import 'package:flutter/material.dart';

class CustomListTileStudent extends StatelessWidget {
  final String title;
  final String subtitle;
  final String pageName;
  final Widget widget;
  final Widget? trailing;
  const CustomListTileStudent({
    super.key,
    required this.title,
    required this.subtitle,
    required this.widget,
    required this.pageName,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    double fontSize;
    if (pageName == "StudentsView") {
      fontSize = 12;
    } else if (pageName == "RegisterToSupervisor") {
      fontSize = 12;
    } else {
      fontSize = 16;
    }
    return ListTile(
        leading: CircleAvatar(
          radius: pageName == "RegisterToSupervisor" ? 20 : 25,
          child: widget,
        ),
        title: Text(
          title,
          style: TextStyle(
              fontSize: fontSize,
              fontWeight: pageName == "RegisterToSupervisor"
                  ? FontWeight.w900
                  : FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 10),
        ),
        trailing: pageName == "MyPartners"
            ? const Icon(Icons.navigate_next)
            : trailing);
  }
}
