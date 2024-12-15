import 'package:flutter/material.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/continent.dart';
import 'package:kora_analysis/UI/Widgets/cards/Item_card.dart';

// ignore: must_be_immutable
class ContinentTile extends ItemCard<Continent> {
  ContinentTile(super.item, Function() router, {super.key})
      : super(
          title: item.name,
          content: '',
          pic: Image.asset(item.picPath),
          action: (selection) => router,
        );
}
