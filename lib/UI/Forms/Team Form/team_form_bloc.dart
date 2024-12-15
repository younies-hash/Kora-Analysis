import 'package:kora_analysis/Architecture/Kora%20Objects/player.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/team.dart';
import 'package:kora_analysis/Architecture/interfaces/bloc_logic.dart';
import 'package:kora_analysis/UI/Forms/form%20logic/form_bloc.dart';

class TeamFormBloc extends FormBloc<Team>{
  TeamFormBloc(super.contxt, super.initialState);
}

class AddPlayer extends KoraEvent<Team>{
  Player? selectedPlayer;
  AddPlayer(this.selectedPlayer);
  @override
  KoraState<Team> apply(KoraState<Team> state) {
    if(selectedPlayer != null) state.cache.players.add(selectedPlayer!);
    return KoraState<Team>(state.cache); 
  }
}

class RemovePlayer extends KoraEvent<Team>{
  Player? selectedPlayer;
  RemovePlayer(this.selectedPlayer);
  @override
  KoraState<Team> apply(KoraState<Team> state) {
    state.cache.players.remove(selectedPlayer);
    return KoraState<Team>(state.cache); 
  }
}