import 'package:flutter/material.dart';
import 'package:kora_analysis/Providers/player_cache.dart';
import 'package:kora_analysis/UI/Widgets/Cards/player_card.dart';
import 'package:kora_analysis/UI/Widgets/default_app_bar.dart';
import 'package:kora_analysis/UI/Widgets/list_of_items.dart.dart';
import 'package:provider/provider.dart';

class PlayersListPage extends StatelessWidget {
  final bool goToProfile;
  final Function? onSelection;
  final FloatingActionButton? floatingBtn;
  const PlayersListPage({super.key,this.goToProfile = false, this.onSelection, this.floatingBtn});

  @override
  Widget build(BuildContext context) {
    final list = Provider.of<PlayerCache>(context).listCache;
    return Scaffold(
      appBar: DefaultAppBar(context),
      body: ListOfItems(
        list,
        builder: (player, action) => PlayerCard(
          player,
          action: action,
        ),
        cache: context.read<PlayerCache>(),
        // route: goToProfile? RouteGenerator.profilePage.builder,
      ),
      floatingActionButton: floatingBtn,
    );
  }
}
