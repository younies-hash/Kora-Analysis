import 'package:kora_analysis/Architecture/Kora%20Objects/tournament.dart';
import 'package:kora_analysis/Architecture/interfaces/kora_cache.dart';

class TourCache extends KoraCache<Tournament> {
  @override
  List<Tournament> getFullList() {
    return listCache;
  }
}