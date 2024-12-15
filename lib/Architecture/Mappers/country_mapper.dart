import 'package:kora_analysis/Architecture/Kora%20Objects/country.dart';
import 'package:kora_analysis/Architecture/interfaces/mapper.dart';

class CountryMapper extends Mapper<Country>{
  @override
  Country fromMap(String id, Map<String, dynamic> map) {
    // Country? temp;
    // try{
    //   temp = Country(map['name'], map['prefix']);
    // } 
    // if(temp == null) {
    //   throw DBException<Country>(temp);
    // }
    return Country(map['name'], map['prefix']);
  }

  @override
  Map<String, dynamic> toMap(Country obj) {
    return <String, dynamic>{
      'name': obj.name,
      'flag': obj.picPath,
      'prefix': obj.prefix,
    };
  }
}