import 'package:flutter/material.dart';

class KoraHeader extends StatelessWidget {
  final String content;
  const KoraHeader(
    this.content, {
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Text(
        content,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.5,
          wordSpacing: 0.4,
          textBaseline: TextBaseline.ideographic,
        ),
      ),
    );
  }
}
