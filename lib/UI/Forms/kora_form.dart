import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/team.dart';
import 'package:kora_analysis/Architecture/interfaces/bloc_logic.dart';
import 'package:kora_analysis/Providers/team_cache.dart';
import 'package:kora_analysis/UI/Forms/Team%20Form/team_form.dart';
import 'package:kora_analysis/UI/Forms/Team%20Form/team_form_bloc.dart';
import 'package:kora_analysis/UI/Widgets/default_app_bar.dart';
import 'package:kora_analysis/UI/Widgets/empty_page_widget.dart';

enum FormType {teamForm, playerForm, matchForm, tourForm}

class KoraForm extends StatelessWidget {
  final FormType type;
  const KoraForm.team({super.key}) : type = FormType.teamForm;
  const KoraForm.player({super.key}) : type = FormType.teamForm;
  const KoraForm.match({super.key}) : type = FormType.teamForm;
  const KoraForm.tour({super.key}) : type = FormType.teamForm;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case FormType.teamForm:
      return BlocProvider(
        create: (context) => TeamFormBloc(
          context,
          KoraState(
            context.read<TeamCache>().itemCache ?? Team.newTeam(),
          ),
        ),
        child: TeamForm(),
      );
      default:
      return Scaffold(
        appBar: DefaultAppBar(context),
        body: const EmptyPageNote(),
      );
    }
  }
}
