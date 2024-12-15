import 'package:kora_analysis/Architecture/Kora%20Objects/team.dart';
import 'package:kora_analysis/Architecture/interfaces/kora_obj.dart';

class Player extends KoraObj {
  Team team;
  Player(
    String id, {
    required String name,
    required super.country,
    String pfp = "assets/images/players/def_pfp.jpg",
    required this.team,
  }) : super(id, name, picPath: pfp);
}
