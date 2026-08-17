import 'package:tutorial_app/classes/inheritance/animal.dart';

class Dog extends Animal {

  String race;

  Dog(this.race, super.type, super.genre);

  void bark() {
    print("El perro ladra");
  }

  @override
  void move() {
    print("El perro corre alegremente sobre sus cuatro patas");
  }
}
