import 'package:tutorial_app/classes/inheritance/mixin/logger.dart';

class User with Logger {
  void create() {
    log("Nuevo usuario creado.");
  }
}

