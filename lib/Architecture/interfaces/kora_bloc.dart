import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kora_analysis/Architecture/interfaces/bloc_logic.dart';
import 'package:kora_analysis/Architecture/interfaces/kora_obj.dart';

class KoraBloc<Obj extends KoraObj> extends Bloc<KoraEvent, KoraState<Obj>> {
  KoraBloc(super.initialState) {
    on<KoraEvent<Obj>>(
      (event, emit) => emit(
        event.apply(state),
      ),
    );
  }
}