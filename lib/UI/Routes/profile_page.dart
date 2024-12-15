import 'package:flutter/material.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/player.dart';
import 'package:kora_analysis/Providers/player_cache.dart';
import 'package:kora_analysis/UI/Widgets/default_app_bar.dart';
import 'package:kora_analysis/UI/Widgets/empty_page_widget.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    final Player? player = Provider.of<PlayerCache>(context).itemCache;
    // final localizer = Provider.of<Localizer>(context);
    return Scaffold(
      appBar: DefaultAppBar(context),
      body: player == null
          ? const EmptyPageNote()
          : const Center(
              // child: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     Row(
              //       children: [
              //         Image.asset("assets/players/${player.pfp}"),
              //         Column(
              //           children: [
              //             Text(player.name),
              //             Text("${player.playerRole}\t${player.playerNumber}"),
              //             StatBox(player.totalNumOfMatches),
              //             KoraLink(
              //               text: localizer.labels.first_match,
              //               route: RouteGenerator.matchInfo,
              //               func: () {
              //                 Provider.of<MatchCache>(context).itemCache =
              //                     player.firstMatch;
              //               },
              //             ),
              //           ],
              //         ),
              //         CountryBox(player.country),
              //         for (Stat s in player.basicStats) StatBox(s),
              //       ],
              //     ),
              //     KoraLink(
              //       text: localizer.labels.first_match,
              //       route: RouteGenerator.matchInfo,
              //       func: () {
              //         Provider.of<MatchCache>(context).itemCache =
              //             player.firstMatch;
              //       },
              //     ),
              //     Row(
              //       children: [
              //         ElevatedButton(
              //           onPressed: () {
              //             player.history = PlayerCache.getPlayerHistory(player);
              //             Provider.of<MatchCache>(context).listCache =
              //                 player.history;
              //             Navigator.of(context).pushNamed(
              //               RouteGenerator.matchList.path,
              //             );
              //           },
              //           child: Text(localizer.labels.history),
              //         ),
              //         ElevatedButton(
              //           onPressed: () => Navigator.of(context).pushNamed(
              //             RouteGenerator.career.path,
              //           ),
              //           child: Text(localizer.labels.overall_progress),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
            ),
    );
  }
}
