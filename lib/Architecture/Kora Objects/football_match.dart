import 'package:kora_analysis/Architecture/Kora%20Objects/country.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/team.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/tournament.dart';
import 'package:kora_analysis/Architecture/interfaces/kora_obj.dart';

enum QuarterMatch {
  firstQuarter,
  secondQuarter,
  thirdQuarter,
  forthQuarter,
}

class FootballMatch extends KoraObj{
  Team team1, team2;
  int team1Goals, team2Goals;
  Tournament tour;
  DateTime date;
  //List<Stat> basicStats = [];
  List<QuarterMatch> quarters = [
    QuarterMatch.firstQuarter,
    QuarterMatch.secondQuarter,
    QuarterMatch.thirdQuarter,
    QuarterMatch.forthQuarter,
  ];
  FootballMatch({
    required String id,
    required String logo,
    required Country country,
    required this.team1,
    required this.team2,
    required this.team1Goals,
    required this.team2Goals,
    required this.date,
    required this.tour,
  }) : super(id, "${team1.name} X ${team2.name}}", picPath: "", country: country,);
  String getTeams() => "${team1.name} X ${team2.name}}";
  String getResault() =>
      "${team1.name} : $team1Goals X ${team2.name}} : $team2Goals";
  String getDate() => "${date.day} / ${date.month} / ${date.year}";
  @override
  String toString() {
    return "${getResault()} - ${getDate()}";
  }
  QuarterMatch setQuarterMatch(String quarter) {
    switch (quarter) {
      case "First Quarter":
        return QuarterMatch.firstQuarter;
      case "Second Quarter":
        return QuarterMatch.secondQuarter;
      case "Third Quarter":
        return QuarterMatch.thirdQuarter;
      case "Fourth Quarter":
        return QuarterMatch.forthQuarter;
      default:
        return QuarterMatch.firstQuarter;
    }
  }

  String getQuarterMatch(QuarterMatch quarter) {
    switch (quarter) {
      case QuarterMatch.firstQuarter:
        return "First Quarter";
      case QuarterMatch.secondQuarter:
        return "Second Quarter";
      case QuarterMatch.thirdQuarter:
        return "Third Quarter";
      case QuarterMatch.forthQuarter:
        return "Fourth Quarter";
      default:
        return "First Quarter";
    }
  }
}
