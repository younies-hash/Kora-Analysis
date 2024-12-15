import 'package:kora_analysis/Architecture/Mappers/country_mapper.dart';
import 'package:kora_analysis/Architecture/interfaces/kora_obj.dart';
import 'package:kora_analysis/Architecture/interfaces/mapper.dart';
import 'package:kora_analysis/Architecture/object%20specific%20interfaces/i_country.dart';

class Country extends BasicKoraObj {
  final String prefix;
  Country(String name, this.prefix)
      : super(
          name,
          name,
          "$name-512.png",
        );
  Country.un()
      : prefix = 'International',
        super('un', 'United Nations', 'un.png');
  static Mapper mapper = CountryMapper();
  static ICountry interfcae = ICountry();
}
