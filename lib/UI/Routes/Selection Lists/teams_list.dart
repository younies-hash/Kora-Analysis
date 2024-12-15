import 'package:flutter/material.dart';
import 'package:kora_analysis/Providers/team_cache.dart';
import 'package:kora_analysis/UI/Widgets/Cards/team_card.dart';
import 'package:kora_analysis/UI/Widgets/default_app_bar.dart';
import 'package:kora_analysis/UI/Widgets/list_of_items.dart.dart';
import 'package:provider/provider.dart';

class TeamsListPage extends StatelessWidget {
  final Function? action;
  final FloatingActionButton? floatingBtn;
  const TeamsListPage({super.key, this.action, this.floatingBtn});

  @override
  Widget build(BuildContext context) {
    final list = Provider.of<TeamCache>(context).listCache;
    return Scaffold(
      appBar: DefaultAppBar(context),
      body: ListOfItems(
        list,
        builder: (team, action) => TeamCard(
          team,
          action: action,
        ),
        cache: context.read<TeamCache>(),
      ),
      floatingActionButton: floatingBtn,
    );
  }
}
