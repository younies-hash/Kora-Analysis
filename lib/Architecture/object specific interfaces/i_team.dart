import 'package:flutter/src/widgets/framework.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/team.dart';
import 'package:kora_analysis/Architecture/interfaces/object_specific_interface.dart';

class ITeam extends IKoraObject<Team>{
  @override
  Team fetchObj(String id, {BuildContext? context}) {
    // TODO: implement fetchObj
    throw UnimplementedError();
  }

  @override
  void uploadObj(Team obj, {BuildContext? context}) {
    // TODO: implement uploadObj
  }
}