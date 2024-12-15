import 'package:kora_analysis/Architecture/interfaces/kora_obj.dart';

abstract class KoraEvent<T extends KoraObj>{
  KoraState<T> apply(KoraState<T> state);
}

class KoraState<T extends KoraObj>{
  T cache;
  KoraState(this.cache);
}