import 'package:kora_analysis/Architecture/Kora%20Objects/country.dart';

class BasicKoraObj {
  String id, name, picPath;
  BasicKoraObj(this.id, this.name, this.picPath);
}

class KoraObj extends BasicKoraObj {
  Country country;
  KoraObj(
    String id,
    String name, {
    required String picPath,
    required this.country,
  }) : super(id, name, picPath);
}
