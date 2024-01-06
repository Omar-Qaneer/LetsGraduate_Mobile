import 'package:flutter/material.dart';

class CustomListTileStudent extends StatelessWidget {
  final String name;
  final String email;
  final Widget widget;
  const CustomListTileStudent({
    super.key,
    required this.name,
    required this.email,
    required this.widget,
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
        style: const TextStyle(fontSize: 16),
      ),
      subtitle: Row(
        children: [
          const Icon(Icons.email),
          const SizedBox(
            width: 5,
          ),
          Text(
            email,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
      trailing: const Icon(Icons.navigate_next),
    );
  }
}
