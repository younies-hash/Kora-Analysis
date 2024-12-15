import 'package:flutter/material.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/team.dart';
import 'package:kora_analysis/UI/Widgets/cards/Item_card.dart';

// ignore: must_be_immutable
class TeamCard extends ItemCard<Team> {
  TeamCard(
    super.item, {
    super.key,
    required super.action,
  }) : super(
          title: item.name,
          content: item.country.name,
          pic: Image.asset(item.country.picPath),
          icon: Image.asset(item.picPath),
        );
}
