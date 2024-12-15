import 'package:kora_analysis/Architecture/Kora%20Objects/football_match.dart';
import 'package:kora_analysis/Architecture/interfaces/kora_cache.dart';

class MatchCache extends KoraCache<FootballMatch>{
  @override
  List<FootballMatch> getFullList(){
    return listCache;
  }
}