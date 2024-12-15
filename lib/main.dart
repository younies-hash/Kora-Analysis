import 'package:flutter/material.dart';
import 'package:kora_analysis/DB/api.dart';
import 'package:kora_analysis/Localization/localizer.dart';
import 'package:kora_analysis/Providers/country_provider.dart';
import 'package:kora_analysis/Providers/match_cache.dart';
import 'package:kora_analysis/Providers/player_cache.dart';
import 'package:kora_analysis/Providers/team_cache.dart';
import 'package:kora_analysis/Providers/tour_cache.dart';
import 'package:kora_analysis/UI/Routing%20Logic/route_generator.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kora_analysis/firebase_options.dart';

void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  API.testDownload('id-3');
  runApp(const KoraAnalysis());
}
//TODO: Add random data to the db
//TODO: Add error handling
//TODO: Add authentication listeners
//TODO: Add dynamic UI
//TODO: Add offline support
//TODO: Add user profiles
//TODO: Add data visualization
//TODO: Add search recommendations
//TODO: Add themes

class KoraAnalysis extends StatelessWidget {
  const KoraAnalysis({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<TeamCache>(
          create: (_) => TeamCache(),
        ),
        Provider<PlayerCache>(
          create: (_) => PlayerCache(),
        ),
        Provider<MatchCache>(
          create: (_) => MatchCache(),
        ),
        Provider<TourCache>(
          create: (_) => TourCache(),
        ),
        Provider<CountryCache>(
          create: (_) => CountryCache(),
        ),
        // ChangeNotifierProvider<DBCache>(
        //   create: (_) => DBCache(),
        // ),
        ChangeNotifierProvider<Localizer>(
          create: (_) => Localizer(),
        ),
        // ChangeNotifierProvider<CounterProvider>(
        //   create: (_) => CounterProvider(),
        // ),
      ],
      child: MaterialApp(
        title: 'Kora Analysis',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 55, 193, 66)),
          useMaterial3: true,
        ),
        onGenerateInitialRoutes: RouteGenerator.generateIntialRoute,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
