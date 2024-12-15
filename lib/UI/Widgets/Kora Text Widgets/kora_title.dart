import 'package:flutter/material.dart';

class KoraTitle extends StatelessWidget {
  final String title;
  const KoraTitle(
    this.title, {
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        letterSpacing: 6,
        wordSpacing: 14,
        textBaseline: TextBaseline.ideographic,
      ),
    );
  }
}
