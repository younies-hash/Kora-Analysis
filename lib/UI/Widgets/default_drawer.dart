import 'package:flutter/material.dart';

class DefaultDrawer extends StatelessWidget {
  final List<Widget> contents;
  const DefaultDrawer({Key? key, this.contents = const []}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
              child: const Center(
                child: Text(
                  "Kora Analysis",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 6,
                    wordSpacing: 14,
                    textBaseline: TextBaseline.ideographic,
                  ),
                ),
              ),
            ),
            for (Widget item in contents) ...<Widget>[
              const Divider(),
              item,
            ],
          ],
        ),
      ),
    );
  }
}
