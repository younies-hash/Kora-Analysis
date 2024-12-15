import 'package:kora_analysis/Architecture/Kora%20Objects/team.dart';
import 'package:kora_analysis/Architecture/interfaces/kora_cache.dart';
import 'package:kora_analysis/DB/api.dart';

class TeamCache extends KoraCache<Team> {
  @override
  List<Team> getFullList() {
    API.db
        .collection(
          DBCollection.teams.id,
        )
        .get()
        .then((collection) {
      for (var doc in collection.docs) {
        listCache.add(Team.mapper.fromMap(doc.id, doc.data()));
      }
    });
    return listCache;
  }
}
