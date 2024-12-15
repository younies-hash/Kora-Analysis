import 'package:flutter/material.dart';
import 'package:kora_analysis/UI/Widgets/Kora%20Text%20Widgets/kora_header.dart';

class KoraErrorWidget extends StatelessWidget{
  const KoraErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Center(
          child: KoraHeader('Something went terribly wrong'),
        ),
      ],
    );
  
 }
}