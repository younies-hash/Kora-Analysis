import 'package:flutter/material.dart';
import 'package:kora_analysis/UI/Routing%20Logic/route_generator.dart';

class DefaultAppBar extends AppBar {
  final BuildContext context;
  final String pageTitle;
  DefaultAppBar(this.context, {super.key, this.pageTitle = ''})
      : super(
          title: Text(pageTitle),
          backgroundColor: Colors.green,
          actions: [
            // IconButton(
            //   icon: const Icon(Icons.language),
            //   onPressed: () {
            //     Provider.of<Localizer>(context,listen: false).switchMainLangs();
            //   },
            // ),
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () =>
                  Navigator.of(context).pushNamed(RouteGenerator.home.path),
            ),
          ],
        );
}
