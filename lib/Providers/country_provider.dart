import 'package:kora_analysis/Architecture/Kora%20Objects/country.dart';
import 'package:kora_analysis/Architecture/interfaces/kora_cache.dart';
import 'package:kora_analysis/DB/api.dart';

class CountryCache extends KoraCache<Country> {
  @override
  List<Country> getFullList() {
    API.db
        .collection(
          DBCollection.countries.id,
        )
        .get()
        .then(
      (countryDocs) {
        listCache = [
          for (var doc in countryDocs.docs)
            Country.mapper.fromMap(
              doc.id,
              doc.data(),
            ),
        ];
      },
    );
    return listCache;
  }
}
