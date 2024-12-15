import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/team.dart';

abstract class API<T> {
  static FirebaseFirestore db = FirebaseFirestore.instance;
  static void testUpload(String id) {
    db
        .collection(
          DBCollection.teams.id,
        )
        .doc(id)
        .set(Team.mapper.toMap(
          Team.newTeam(),
        ));
  }

  static void testDownload(String id) {
    db
        .collection(
          DBCollection.teams.id,
        )
        .doc(id)
        .get()
        .then((doc) {
      if (!doc.exists) {
        print('Document does not exist');
        return;
      }
      Team team = Team.mapper.fromMap(
        doc.id,
        doc.data() as Map<String, dynamic>,
      );
      print(team);
    });
  }
}

class DBCollection {
  final String id;
  const DBCollection(this.id);

  static const DBCollection players = DBCollection("players");
  static const DBCollection continents = DBCollection("continents");
  static const DBCollection teams = DBCollection("teams");
  static const DBCollection tournaments = DBCollection("tournaments");
  static const DBCollection matches = DBCollection("matches");
  static const DBCollection users = DBCollection("users");
  static const DBCollection admins = DBCollection("admins");
  static const DBCollection stadium = DBCollection("stadium");
  static const DBCollection countries = DBCollection("country");

  static const DBCollection counters = DBCollection("counters");
}
