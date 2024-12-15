import 'package:flutter/material.dart';
import 'package:kora_analysis/Architecture/Kora%20Objects/country.dart';
import 'package:kora_analysis/Architecture/interfaces/kora_obj.dart';
import 'package:kora_analysis/Architecture/interfaces/kora_bloc.dart';
import 'package:kora_analysis/Providers/country_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormBloc<Obj extends KoraObj> extends KoraBloc<Obj> {
  List<DropdownMenuItem<Country>> countryList = [];
  FormBloc(BuildContext context, super.initialState) {
    countryList = context.read<CountryCache>().getFullList().map(
      (country) {
        return DropdownMenuItem<Country>(
          value: country,
          child: Text(country.name),
        );
      },
    ).toList();
  }
}
