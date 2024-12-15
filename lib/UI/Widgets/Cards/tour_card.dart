import 'package:flutter/material.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/tournament.dart';

class TourCard extends StatelessWidget {
  final Tournament tour;
  final Function? action;
  const TourCard(
    this.tour, {
    super.key,
    this.action,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: action != null ? action!() : () {},
        child: ListTile(
          leading: Image.asset("assets/tournaments/${tour.logo}"),
          title: Text(tour.name),
          trailing: const Icon(Icons.play_arrow),
        ));
  }
}
