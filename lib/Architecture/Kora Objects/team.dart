import 'package:kora_analysis/Architecture/Kora%20Objects/country.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/player.dart';
import 'package:kora_analysis/Architecture/Mappers/team_mapper.dart';
import 'package:kora_analysis/Architecture/interfaces/kora_obj.dart';
import 'package:kora_analysis/Architecture/interfaces/mapper.dart';

class Team extends KoraObj {
  List<Player> players = [];
  static const String deflogo = "assets/images/teams/def_team_logo.png";
  static Mapper mapper = TeamMapper();
  Team({
    required String id,
    required String name,
    String logo = deflogo,
    required Country country,
    this.players = const [],
  }) : super(id, name, picPath: logo, country: country);
  Team.newTeam()
      : super(
          "id",
          "new team",
          picPath: deflogo,
          country: Country.un(),
        );
}
