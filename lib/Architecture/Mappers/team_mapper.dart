import 'package:kora_analysis/Architecture/Kora%20Objects/country.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/team.dart';
import 'package:kora_analysis/Architecture/interfaces/mapper.dart';

class TeamMapper extends Mapper<Team>{
  @override
  Team fromMap(String id, Map<String, dynamic> map) =>
  Team(
    id: id,
    name: map['name'],
    logo: map['logo'],
    country: Country.interfcae.fetchObj(map['country']),
  );

  @override
  Map<String, dynamic> toMap(obj) => <String, dynamic>{
    'name': obj.name,
    'logo': obj.picPath,
    'country': obj.country.id,
  };
}