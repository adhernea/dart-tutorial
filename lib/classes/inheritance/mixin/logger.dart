import 'package:intl/intl.dart';

mixin Logger {
  void log(String message) {
    print("[${_getCurrentTimestamp()}] Registro: $message");
  }

  String _getCurrentTimestamp() {
    DateTime now = DateTime.now();
  
    String dateTime = DateFormat('dd-MM-yy HH:mm:ss').format(now);

    return dateTime;
  }
}
