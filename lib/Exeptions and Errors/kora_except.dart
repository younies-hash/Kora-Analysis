import 'package:kora_analysis/Architecture/interfaces/kora_obj.dart';

class KoraException implements Exception {
  String message, details;
  KoraException({
    this.message = "Something went terribly wrong :/",
    this.details = "",
  });
  void handle() {}
}

class DBException<T extends BasicKoraObj> extends KoraException {
  T? obj;
  DBException(obj)
      : super(
          message: """Couldn't fetch the following item(s) from the DB:
    ${obj == null ? obj.runtimeType : obj.name}""",
        );
}
