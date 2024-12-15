import 'package:flutter/material.dart';
import 'package:kora_analysis/UI/Forms/collection_list.dart';

class AdminMenuTile extends StatelessWidget {
  const AdminMenuTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const CollectionList(),
          ),
        );
      },
      child: const ListTile(
        leading: Icon(Icons.admin_panel_settings),
        title: Text("Admin Tools"),
        trailing: Icon(Icons.play_arrow),
      ),
    );
  }
}
