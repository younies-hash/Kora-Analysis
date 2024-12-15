import 'package:kora_analysis/Architecture/Kora%20Objects/tournament.dart';
import 'package:kora_analysis/Architecture/interfaces/kora_obj.dart';

class Continent extends BasicKoraObj {
  List<Tournament> tours = [];
  Continent(
    String name, {
    this.tours = const [],
  }) : super(name, name, "assets/images/continents/${name.toLowerCase().replaceAll(' ', '_')}.png");

  static Continent africa = Continent('Africa');
  static Continent asia = Continent('Asia');
  static Continent europe = Continent('Europe');
  static Continent northAmerica = Continent('North America');
  static Continent southAmerica = Continent('Latin America');
  static Continent australia = Continent('Australia');
}
