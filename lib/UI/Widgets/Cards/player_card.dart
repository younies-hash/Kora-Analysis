import 'package:flutter/material.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/player.dart';
import 'package:kora_analysis/UI/Widgets/cards/Item_card.dart';

// ignore: must_be_immutable
class PlayerCard extends ItemCard<Player> {
  PlayerCard(
    super.item, {
    super.key,
    super.action,
  }) : super(
          title: item.name,
          content: item.team.name,
          pic: Image.asset(item.country.picPath),
          icon: Image.asset(item.picPath),
        );
}
