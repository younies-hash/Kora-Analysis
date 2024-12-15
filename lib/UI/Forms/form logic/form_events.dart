import 'package:kora_analysis/Architecture/Kora%20Objects/country.dart';
import 'package:kora_analysis/Architecture/interfaces/bloc_logic.dart';
import 'package:kora_analysis/Architecture/interfaces/kora_obj.dart';

class RenameObj<T extends KoraObj> extends KoraEvent<T>{
  final String newName;
  RenameObj(this.newName);
  @override
  KoraState<T> apply(KoraState<T> state) {
    state.cache.name = newName;
    return KoraState(state.cache);
  }
}

class SetRigion<T extends KoraObj> extends KoraEvent<T>{
  final Country? newRigion;
  SetRigion(this.newRigion);
  
  @override
  KoraState<T> apply(KoraState<T> state) {
    state.cache.country = newRigion ?? state.cache.country;
    return KoraState(state.cache);
  }
}