import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/team.dart';
import 'package:kora_analysis/Architecture/interfaces/bloc_logic.dart';
import 'package:kora_analysis/Providers/player_cache.dart';
import 'package:kora_analysis/UI/Forms/Team%20Form/team_form_bloc.dart';
import 'package:kora_analysis/UI/Forms/form%20logic/form_events.dart';
import 'package:kora_analysis/UI/Routes/Selection%20Lists/player_list_page.dart';
import 'package:kora_analysis/UI/Widgets/Kora%20Text%20Widgets/kora_header.dart';
import 'package:kora_analysis/UI/Widgets/data_box.dart';
import 'package:kora_analysis/UI/Widgets/default_app_bar.dart';
import 'package:kora_analysis/UI/Widgets/input_box.dart';

class TeamForm extends StatelessWidget {
  final TextEditingController nameControl = TextEditingController();

  TeamForm({super.key});
  @override
  Widget build(BuildContext context) {
    TeamFormBloc bloc = context.read<TeamFormBloc>();
    return Scaffold(
      appBar: DefaultAppBar(context, pageTitle: 'Team Form'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DataBox('ID:\t', bloc.state.cache.id),
            const SizedBox(height: 16),
            BlocBuilder<TeamFormBloc, KoraState<Team>>(
              bloc: bloc,
              builder: (context, state) {
                return InputBox(
                  'Team Name:\t',
                  nameControl,
                  onChanged: () {
                    bloc.add(RenameObj<Team>(nameControl.text));
                  },
                );
              },
            ),
            const SizedBox(height: 16),
            BlocBuilder<TeamFormBloc, KoraState<Team>>(
              bloc: bloc,
              builder: (context, state) {
                return ListTile(
                  title: const KoraHeader('select country:\t'),
                  trailing: DropdownButton(
                      items: bloc.countryList,
                      hint: const Text('select country'),
                      onChanged: (selection) =>
                          bloc.add(SetRigion<Team>(selection))),
                );
              },
            ),
            const SizedBox(height: 16),
            BlocBuilder<TeamFormBloc, KoraState<Team>>(
              bloc: bloc,
              builder: (context, state) {
                return Column(
                  children: [
                    ListTile(
                        title: const KoraHeader('Add Players:'),
                        trailing: const Icon(Icons.play_arrow),
                        onTap: () {
                          final cache = context.read<PlayerCache>();
                          cache.listCache = cache.getFullList();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PlayersListPage(
                                onSelection: () {
                                  bloc.add(
                                    AddPlayer(cache.itemCache),
                                  );
                                },
                              ),
                            ),
                          );
                        }),
                    const SizedBox(height: 16),
                    ListTile(
                        title: const KoraHeader('Remove Players:'),
                        trailing: const Icon(Icons.play_arrow),
                        onTap: () {
                          final cache = context.read<PlayerCache>();
                          cache.listCache = bloc.state.cache.players;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PlayersListPage(
                                onSelection: () {
                                  bloc.add(
                                    RemovePlayer(cache.itemCache),
                                  );
                                },
                              ),
                            ),
                          );
                        }),
                  ],
                );
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Team team = context.read<TeamFormBloc>().state.cache;
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Attention!'),
              content: Text('${team.id} - ${team.name}\n${team.players}'),
            ),
          );
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
