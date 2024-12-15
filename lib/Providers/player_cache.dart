import 'package:kora_analysis/Architecture/Kora%20Objects/player.dart';
import 'package:kora_analysis/Architecture/interfaces/kora_cache.dart';

class PlayerCache extends KoraCache<Player>{
  @override
  List<Player> getFullList(){
    return listCache;
  }

  // Player? getSpecificTeamMember(String playerName) {
  //   API.db.collection(DBCollection.players.id).doc(playerName).get().then(
  //     (value) {
  //       player = Player.fromMap(value.data() as Map<String, dynamic>);
  //     },
  //   );
  //   return player;
  // }
}
