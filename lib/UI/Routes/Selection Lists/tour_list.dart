import 'package:flutter/material.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/tournament.dart';
import 'package:kora_analysis/Providers/tour_cache.dart';
import 'package:kora_analysis/UI/Routing%20Logic/route_generator.dart';
import 'package:kora_analysis/UI/Widgets/cards/tour_card.dart';
import 'package:kora_analysis/UI/Widgets/default_app_bar.dart';
import 'package:kora_analysis/UI/Widgets/empty_page_widget.dart';
import 'package:kora_analysis/UI/Widgets/list_of_items.dart.dart';
import 'package:provider/provider.dart';

class TourListPage extends StatelessWidget {
  final Function? action;
  const TourListPage({super.key, this.action});

  @override
  Widget build(BuildContext context) {
    final cache = Provider.of<TourCache>(context);
    return Scaffold(
      appBar: DefaultAppBar(context),
      body: cache.listCache.isNotEmpty
          ? SingleChildScrollView(
              child: ListOfItems<Tournament>(
              cache.listCache,
              builder: (item, action) => TourCard(
                item,
                action: action,
              ),
              route: RouteGenerator.tourList,
              cache: cache,
            ))
          : const EmptyPageNote(),
    );
  }
}
