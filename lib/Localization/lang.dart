// ignore_for_file: non_constant_identifier_names

class Lang {
  final String
      //auth related strings
      email,
      password,
      pass_confirm,
      error,
      weak_pass,
      email_in_use,
      pass_not_same,
      reset_pass,
      unkown_error,
      wrong_code,
      register,
      login,
      logout,
      enter_valid_code,
      check_valid_code,
      wrong_pass,
      //continents
      africa,
      asia,
      europe,
      america,
      latin_america,
      australia,
      //players information related strings
      first_match,
      history,
      overall_progress,
      //DB related strings
      players,
      continents,
      teams,
      tournaments,
      //other strings
      empty_content,
      ok,
      under_construction,
      search;
  Lang({
    //auth related strings
    required this.email,
    required this.password,
    required this.pass_confirm,
    required this.error,
    required this.weak_pass,
    required this.email_in_use,
    required this.pass_not_same,
    required this.reset_pass,
    required this.unkown_error,
    required this.wrong_code,
    required this.register,
    required this.login,
    required this.logout,
    required this.enter_valid_code,
    required this.check_valid_code,
    required this.wrong_pass,
    //continents
    required this.africa,
    required this.asia,
    required this.europe,
    required this.america,
    required this.latin_america,
    required this.australia,
    //players information related strings
    required this.first_match,
    required this.history,
    required this.overall_progress,
    //DB related strings
    required this.players,
    required this.continents,
    required this.teams,
    required this.tournaments,
    //other strings
    required this.empty_content,
    required this.ok,
    required this.under_construction,
    required this.search,
  });
}
