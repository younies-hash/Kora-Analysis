import 'package:kora_analysis/Architecture/Kora%20Objects/country.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/football_match.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/team.dart';
import 'package:kora_analysis/Architecture/interfaces/kora_obj.dart';
import 'package:kora_analysis/default_values.dart';

class Tournament extends KoraObj {
  String logo = defTourLogo;
  List<FootballMatch> listOfMatches;
  List<Team> teams = [];
  Tournament({
    required String id,
    required String name,
    required Country location,
    this.teams = const [],
    this.listOfMatches = const [],
    logo = defTourLogo,
  }) : super(id, name, picPath: "", country: location);
}
