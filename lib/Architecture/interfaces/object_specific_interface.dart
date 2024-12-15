import 'package:flutter/material.dart';

abstract class IKoraObject<T> {
  T fetchObj(String id, {BuildContext? context});
  //dynamic fetchVal(String objId, String valId, context);
  void uploadObj(T obj, {BuildContext? context});
  //void uploadVal(String objId, String valId, context);
}
//TODO: implement api in: teams,matches, tours, user and admins