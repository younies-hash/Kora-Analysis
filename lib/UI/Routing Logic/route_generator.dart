import 'package:flutter/material.dart';
import 'package:kora_analysis/UI/Forms/kora_form.dart';
import 'package:kora_analysis/UI/Routes/Selection%20Lists/player_list_page.dart';
import 'package:kora_analysis/UI/Routes/Selection%20Lists/teams_list.dart';
import 'package:kora_analysis/UI/Routes/Selection%20Lists/tour_list.dart';
import 'package:kora_analysis/UI/Routes/home_page.dart';
import 'package:kora_analysis/UI/Routes/profile_page.dart';

class RouteGenerator {
  static KoraRoute home = KoraRoute(
    "/",
    () => MaterialPageRoute(
      builder: (_) => const HomePage(),
    ),
  );
  // static  KoraRoute forgotPassPage = KoraRoute(
  //     "/Forgot Pass Page",
  //     MaterialPageRoute(
  //         builder: (_) => const ForgotPassPage(),
  //     ),
  // );
  // static KoraRoute loginPage = KoraRoute(
  //     "/login",
  //     MaterialPageRoute(
  //         builder: (_) => const LoginPage(),
  //     ),
  // );
  // static KoraRoute registerPage = KoraRoute(
  //     "/Register Page",
  //     MaterialPageRoute(
  //         builder: (_) => const RegisterPage(),
  //     ),
  // );
  // static KoraRoute validationPage = KoraRoute(
  //     "/Validation Page",
  //     MaterialPageRoute(
  //         builder: (_) => const CodeValidPage(),
  //     ),
  // );

  // static KoraRoute career = KoraRoute(
  //     "/Career",
  //     MaterialPageRoute(
  //         builder: (_) => const CareerPage(),
  //     ),
  // );
  // static KoraRoute matchInfo = KoraRoute(
  //     "/Match Info",
  //     MaterialPageRoute(
  //         builder: (_) => const MatchInfoPage(),
  //     ),
  // );
  // static KoraRoute matchList = KoraRoute(
  //     "/Match List",
  //     MaterialPageRoute(
  //         builder: (_) => const MatchListPage(),
  //     ),
  // );
  static KoraRoute profilePage = KoraRoute(
      "/Profile",
      ()=>MaterialPageRoute(
          builder: (_) => const ProfilePage(),
      ),
  );
  // static KoraRoute teamInfo = KoraRoute(
  //     "/Team Info",
  //     MaterialPageRoute(
  //         builder: (_) => const TeamInfoPage(),
  //     ),
  // );
  static KoraRoute playerList = KoraRoute(
    "/Teams list",
    () => MaterialPageRoute(
      builder: (_) => const PlayersListPage(),
    ),
  );
  static KoraRoute teamList = KoraRoute(
    "/Teams list",
    () => MaterialPageRoute(
      builder: (_) => const TeamsListPage(),
    ),
  );
  static KoraRoute tourList = KoraRoute(
    "/Tour List",
    () => MaterialPageRoute(
      builder: (_) => const TourListPage(),
    ),
  );
  //Forms
  static KoraRoute teamForm = KoraRoute(
    "/Team Form",
    () => MaterialPageRoute(
      builder: (_) => const KoraForm.team(),
    ),
  );
  static List<KoraRoute> allRoutes = [
    home,
    /*authentecation pages*/
    // loginPage,
    // registerPage,
    // forgotPassPage,
    // validationPage,
    /*static info routes*/
    profilePage,
    // career,
    // teamInfo,
    // matchInfo,
    /*selection pages*/
    playerList,
    teamList,
    tourList,
    // matchList,
    /*forms*/
    teamForm,
  ];
  static List<Route<dynamic>> generateIntialRoute(String initRoute) {
    return [home.pageBuilder()];
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    for (KoraRoute yr in allRoutes) {
      if (settings.name == yr.path) return yr.pageBuilder();
    }
    return home.pageBuilder();
  }
}

class KoraRoute {
  String path;
  MaterialPageRoute Function() pageBuilder;
  KoraRoute(this.path, this.pageBuilder);
}
