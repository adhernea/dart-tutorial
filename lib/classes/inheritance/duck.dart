import 'package:tutorial_app/classes/inheritance/animal.dart';
import 'package:tutorial_app/classes/inheritance/mixin/flyable.dart';
import 'package:tutorial_app/classes/inheritance/mixin/swimmable.dart';

class Duck extends Animal with Flyable, Swimmable {

  Duck(super.type, super.genre);

  @override
  void fly() {
    print("El pato vuelaciona");
  }
}

