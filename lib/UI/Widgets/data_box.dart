import 'package:flutter/material.dart';
import 'package:kora_analysis/UI/Widgets/Kora%20Text%20Widgets/kora_header.dart';

class DataBox extends StatelessWidget {
  final String name, value;
  const DataBox(this.name, this.value, {super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 140,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Center(child: KoraHeader(name)),
          ),
        ),
        Container(
            width: 250,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(45, 158, 158, 158),
              borderRadius: const BorderRadius.all(Radius.circular(2)),
              border: Border.all(
                  style: BorderStyle.solid,
                  width: 0.5,
                  color: const Color.fromARGB(60, 158, 158, 158)),
            ),
            child: Padding(
                padding: const EdgeInsets.all(8), child: KoraHeader(value))),
      ],
    );
  }
}
