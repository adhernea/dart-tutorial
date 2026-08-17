mixin Logger {
  void log(String message) {
    print("[${_getCurrentTimestamp()}] Registro: $message");
  }

  String _getCurrentTimestamp() {
    DateTime now = DateTime.now();

    String dateTime =
        "${now.day.toString().padLeft(2, '0')}-"
        "${now.month.toString().padLeft(2, '0')}-"
        "${now.year} "
        "${now.hour.toString().padLeft(2, '0')}:"
        "${now.minute.toString().padLeft(2, '0')}:"
        "${now.second.toString().padLeft(2, '0')}";

    return dateTime;
  }
}
