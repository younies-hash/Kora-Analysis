import 'package:flutter/src/widgets/framework.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/country.dart';
import 'package:kora_analysis/Architecture/interfaces/object_specific_interface.dart';
import 'package:kora_analysis/DB/api.dart';
import 'package:kora_analysis/Exeptions%20and%20Errors/kora_except.dart';

class ICountry extends IKoraObject<Country> {
  @override
  Country fetchObj(String id, {BuildContext? context}) {
    API.db
        .collection(
          DBCollection.countries.id,
        )
        .doc(id)
        .get()
        .then((doc) {
      return Country.mapper.fromMap(
        id,
        doc.data() as Map<String, dynamic>,
      );
    });
    throw DBException(Country(id, id));
  }

  @override
  void uploadObj(Country obj, {BuildContext? context}) {
    API.db
        .collection(
          DBCollection.countries.id,
        )
        .doc(obj.id)
        .set(
          Country.mapper.toMap(obj),
        );
  }
}
