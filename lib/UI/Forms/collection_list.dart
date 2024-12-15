// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/team.dart';
import 'package:kora_analysis/Providers/team_cache.dart';
import 'package:kora_analysis/UI/Routes/Selection%20Lists/teams_list.dart';
import 'package:kora_analysis/UI/Routing%20Logic/route_generator.dart';
import 'package:kora_analysis/UI/Widgets/Kora%20Text%20Widgets/kora_header.dart';
import 'package:kora_analysis/UI/Widgets/default_app_bar.dart';
import 'package:provider/provider.dart';

class CollectionList extends StatelessWidget {
  const CollectionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(context),
      body: ListView(
        children: [
          const SizedBox(height: 30),
          CollectionListItem(
            child: InkWell(
              onTap: () {},
              child: const Center(child: KoraHeader("Players")),
            ),
          ),
          CollectionListItem(
            child: InkWell(
              onTap: () {
                // TODO: change this
                Provider.of<TeamCache>(context, listen: false).listCache = [];
                //show a list of all registered teams
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => TeamsListPage(
                      //this action function is called after selecting
                      // teams from the list
                      action: () {
                        Navigator.of(context).pushNamed(RouteGenerator.teamForm.path,);
                      },
                      //a btn with a  plus sign in the list page
                      // for adding new teams
                      floatingBtn: FloatingActionButton(
                        onPressed: () {
                          context.read<TeamCache>().itemCache = Team.newTeam();
                          Navigator.of(context)
                              .pushNamed(
                                RouteGenerator.teamForm.path,
                              );
                        },
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ),
                );
              },
              child: const Center(child: KoraHeader("Teams")),
            ),
          ),
          CollectionListItem(
            child: InkWell(
              onTap: () {},
              child: const Center(child: KoraHeader("Tournaments")),
            ),
          ),
          CollectionListItem(
            child: InkWell(
              onTap: () {},
              child: const Center(child: KoraHeader("Football Matches")),
            ),
          ),
          CollectionListItem(
            child: InkWell(
              onTap: () {},
              child: const Center(child: KoraHeader("Stadiums")),
            ),
          ),
        ],
      ),
    );
  }
}

class CollectionListItem extends StatelessWidget {
  final Widget child;
  const CollectionListItem({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: SizedBox(
        height: 55,
        child: Card(
          shape: Border.all(
            color: const Color.fromARGB(60, 158, 158, 158),
            width: 2,
          ),
          child: child,
        ),
      ),
    );
  }
}
