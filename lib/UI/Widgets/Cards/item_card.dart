import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemCard<T> extends StatelessWidget {
  final T item;
  String title, content;
  Widget? pic, icon;
  Function /*(T selection)*/ ? action;
  ItemCard(
    this.item, {
    super.key,
    required this.title,
    required this.content,
    this.pic,
    this.icon,
    this.action,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: pic,
      title: Text(title),
      subtitle: Text(content),
      trailing: icon,
      onTap: () {
        if (action != null) action!(/*item*/);
      },
    );
  }
}
