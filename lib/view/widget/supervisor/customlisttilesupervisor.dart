import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/widget/supervisor/customtrailingsupervisor.dart';

class CustomListTileSupervisor extends StatelessWidget {
  final int index;
  final List<Set<Map<String, Object>>> groups;
  const CustomListTileSupervisor(
      {super.key, required this.index, required this.groups});

  @override
  Widget build(BuildContext context) {
    final group = groups[index];
    final String groupLength = group.length.toString();

    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: const Color(0xff764abc),
        child: Text(
          group.elementAt(0)['name'].toString().substring(0, 1),
          style: const TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      title: Text(
        "Group $index",
        style: const TextStyle(fontSize: 16),
      ),
      subtitle: Row(
        children: [
          const Icon(Icons.groups),
          const SizedBox(
            width: 5,
          ),
          Text(
            "$groupLength members",
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
      trailing: CustomTrailingSupervisor(index: index, group: group),
    );
  }
}
