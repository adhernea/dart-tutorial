import 'package:tutorial_app/classes/person.dart';
import 'package:tutorial_app/utils.dart' as utils;

void main(List<String> arguments) {
  //Instancia con parámetros nombrados
  Person person = Person(name: "Ana", age: 20);
  //person.name = "Pedro";
  person.introduceMyself(); // Hola, soy Pedro
}







void loopsTutorials() {
  // (inicializacion; condicion; incremento)
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      continue; // Salta a la siguiente iteración del bucle cuando llega a esta línea
    }

    print("Número: $i");
  }

  int count = 1;
  // Repite el bloque de código mientras la condición se cumpla
  while (count <= 5) {
    print("Contador: $count");
    count++;
  }

  // Primero ejecuta el código y después comprueba la condición para repetir
  do {
    print("Contador: $count");

    if (count == 8) {
      break; // Detiene y sale del bucle cuando llega a esta línea
    }

    count++;
  } while (count <= 10);
}

void switchCaseTutorial(String day) {
  switch (day) {
    // variable que quieres comprobar
    case "Lunes": // posible valor-caso
      print("Suerte mai fren");
      break; // Termina el switch
    case "Viernes":
      print("¡Ya casi a descansar!");
      break;
    case "Sábado":
    case "Domingo del Señor": // Mismo código para dos casos
      print("¿Una playita o qué?");
      break;
    default: // Llega aquí si la variable no coincide con ningún caso
      print("Los animales de dos en dos, uó, uó...");
  }
}

void ifElseTutorial(double? score) {
  if (score == null) {
    print("¡Puntuación no recibida!");
    return;
  } else if (score < 0 || score > 100) {
    print("¡Puntuación no válida!");
  }

  // && como operador AND
  // || como operador OR
  // != como operador Distinto De
  // ! como operador NOT

  if (score >= 90) {
    print("Excelente");
  } else if (score >= 70) {
    print("Notable");
  } else if (score == 60) {
    print("Notable");
  } else if (score >= 50) {
    print("Justito");
  } else {
    print("Meh");
  }
}

void listIterationTutorial() {
  const names = ["Chachi", "Pistachi", "Lerendi"];

  // Para recorrer una lista con bucle for
  for (var name in names) {
    print(name);
  }

  // Foreach propio de la lista. No es recomendable pasar parámetros, solo la función
  names.forEach(print);

  // Mapea la lista, modificando cada elemento y da una lista nueva
  var newNames = names.map((n) => '$n-primo').toList();
  print(newNames); // ["Chachi-primo", "Pistachi-primo", "Lerendi-primo"]

  // Filtra creando otra lista
  var startsWithP = names.where((n) => n.startsWith("P")).toList();
  print(startsWithP); // [Pistachi]
}

void listTutorial() {
  // Creación de una lista
  List<int> numbers = [2, 1, 4, 3];

  // Añade un elemento más al final de la lista
  numbers.add(5);

  // Ordena los elementos de la lista. Acepta funciones de ordenamiento
  numbers.sort();

  // Devuelve el tamaño de la lista
  print(numbers.length);

  // Devuelve el último elemento de la lista
  print(numbers.first);

  // Devuelve el último elemento de la lista
  print(numbers.last);

  // Elimina todos los elementos de la lista
  numbers.clear();

  // Booleanos para comprobar si la lista tiene o no elementos
  numbers.isEmpty;
  numbers.isNotEmpty;

  // Creación de una lista de tipo String que pueden ser nulos
  List<String?> names = ["Ana", "Luis", "Paco", null];

  // Mostrará "Paco" por consola
  print(names[2]);

  // Modifica al elemento de la posición 1 (Luis es sobreescrito)
  names[1] = "Adrian";

  // Devuelve un valor booleano dependiendo de si encuentra o no el elemento
  names.contains("Luis");

  // Devuelve el índice del elemento si se encuentra en la lista, si no, -1
  names.indexOf("Ana");

  // Elimina el elemento a partir de su valor
  names.remove("Ana");

  // Elimina elemento en la posición 0 (Adrián)
  names.removeAt(0);

  // Elimina al último elemento de la lista (null)
  names.removeLast();

  // Lista con objetos de diferente tipo. ¡Cuidado con esto!
  List<Object> myObjectsList = ["Hola", 18, true];

  // Creación de una lista constante (tipo inferido)
  // Esta lista no puede ser modificada de ninguna manera
  const myStringsList = ["Hola", "que", "tal"];
  // myStringsList.add("?"); => Da Error

  // Esta permite modificaciones internas pero no reinicialización.
  final myNumbersList = [1, 2, 3];
  myNumbersList.add(4);
  // myNumbersList = [5, 6]; => Da Error
}

void variablesFunctionTutorial() {
  const username = "Adrian";
  const birthYear = 1992;

  utils.greetUser(username, yearOfBirth: birthYear);

  print(utils.buildUserGreetings("Juan", 69, "Hdez", false));
  print(utils.buildUserGreetings("Oli", 26, "Pérez"));
  print(utils.buildUserGreetings("Chechu", 12));

  utils.execute(() {
    print("Ejecutando...");
  });

  utils.execute(() => 6 * 7);

  utils.execute(utils.calculateAsArrow);
}
