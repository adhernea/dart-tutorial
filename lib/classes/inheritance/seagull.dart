import 'package:tutorial_app/classes/inheritance/bird.dart';

class Seagull implements Bird {
  @override
  void fly() {
    print("Despegando para robar comidita a los despistados...");
  }
}
