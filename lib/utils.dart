int calculate(int a, int b) {
  return a * b;
}

int calculateAsArrow(int a, int b) => a * b;


void greetUser(String name, {required int yearOfBirth}) {
  print('¡Hola $name de ${DateTime.now().year - yearOfBirth} años de edad!');
}

String buildUserGreetings(String name, int age, [String? surname, bool alive = true]) {
  return '¡Hola $name de $age años de edad!';
}


void execute(Function operation) {
  operation();
}


