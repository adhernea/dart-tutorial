class Person {
  // Atributos
  final String _name;
  int age;

  // Constructor abreviado
  Person({
    required this._name,
    required this.age
  });

  void introduceMyself() {
    print("Hola, soy $_name");
  }
}

