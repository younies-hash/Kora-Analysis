import 'package:flutter/material.dart';
import 'package:kora_analysis/UI/Widgets/Kora%20Text%20Widgets/kora_header.dart';

class InputBox extends StatefulWidget {
  final String name;
  final TextEditingController controller;
  final Function onChanged;
  const InputBox(this.name, this.controller, {required this.onChanged, super.key});

  @override
  _InputBoxState createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 140,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0,top: 10.0),
            child: Center(child: KoraHeader(widget.name)),
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
          child: Center(
            child: TextFormField(
              controller: widget.controller,
              onChanged: widget.onChanged(),
              onEditingComplete: widget.onChanged(),
            ),
          ),
        ),
      ],
    );
  }
}
