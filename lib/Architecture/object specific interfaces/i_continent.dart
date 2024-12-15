import 'package:kora_analysis/Architecture/Kora%20Objects/continent.dart';
import 'package:kora_analysis/DB/api.dart';

class IContinent {
  static String getTours(Continent continent) {
    API.db
        .collection(
          DBCollection.continents.id,
        )
        .doc('Africa')
        .get()
        .then((doc) {
          return '${doc.data()}';
    });
    return 'No data found';
  }
}
