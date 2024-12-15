import 'package:flutter/material.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/continent.dart';
import 'package:kora_analysis/Architecture/object%20specific%20interfaces/i_continent.dart';
import 'package:kora_analysis/Localization/localizer.dart';
import 'package:kora_analysis/Providers/team_cache.dart';
import 'package:kora_analysis/Providers/tour_cache.dart';
import 'package:kora_analysis/UI/Forms/form%20widgets/admin_menu_tile.dart';
import 'package:kora_analysis/UI/Routing%20Logic/route_generator.dart';
import 'package:kora_analysis/UI/Widgets/Cards/continent_tile.dart';
import 'package:kora_analysis/UI/Widgets/default_app_bar.dart';
import 'package:kora_analysis/UI/Widgets/default_drawer.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final controller = TextEditingController();

  void route(BuildContext context) {
    final cache = Provider.of<TourCache>(context);
    cache.listCache = [];
    Navigator.of(context).pushNamed(
      RouteGenerator.tourList.path,
    );
  }

  //
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  //
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    final localizer = Provider.of<Localizer>(context, listen: false);
    final labels = localizer.labels;
    return Scaffold(
      appBar: DefaultAppBar(
        context,
        pageTitle: "Home",
      ),
      drawer: DefaultDrawer(
        contents: [
          const AdminMenuTile(),
          ContinentTile(
            Continent.africa,
            () {
              final cache = Provider.of<TourCache>(context, listen: false);
              cache.listCache = [];
              Navigator.of(context).pushNamed(
                RouteGenerator.tourList.path,
              );
            },
          ),
          ContinentTile(
            Continent.asia,
            () {
              final cache = Provider.of<TourCache>(context, listen: false);
              cache.listCache = [];
              Navigator.of(context).pushNamed(
                RouteGenerator.tourList.path,
              );
            },
          ),
          ContinentTile(
            Continent.europe,
            () {
              final cache = Provider.of<TourCache>(context, listen: false);
              cache.listCache = [];
              Navigator.of(context).pushNamed(
                RouteGenerator.tourList.path,
              );
            },
          ),
          ContinentTile(
            Continent.northAmerica,
            () {
              final cache = Provider.of<TourCache>(context, listen: false);
              cache.listCache = [];
              Navigator.of(context).pushNamed(
                RouteGenerator.tourList.path,
              );
            },
          ),
          ContinentTile(
            Continent.southAmerica,
            () {
              final cache = Provider.of<TourCache>(context, listen: false);
              cache.listCache = [];
              Navigator.of(context).pushNamed(
                RouteGenerator.tourList.path,
              );
            },
          ),
          ContinentTile(
            Continent.australia,
            () {
              final cache = Provider.of<TourCache>(context, listen: false);
              cache.listCache = [];
              Navigator.of(context).pushNamed(
                RouteGenerator.tourList.path,
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //search bar
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    style: BorderStyle.solid,
                    width: 2.0,
                    color: Colors.green,
                  ),
                  //shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 10),
                    ),
                  ],
                  color: const Color.fromARGB(255, 213, 253, 218),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: labels.search),
                    controller: controller,
                  ),
                ),
              ),
              const SizedBox(height: 100,),
              Text(context.read<TeamCache>().getFullList().toString()),
              const SizedBox(height: 100,),
              Text(IContinent.getTours(Continent.africa)),
              //ListOfItems.players(DBCache.getMostCommen()),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
