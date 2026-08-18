import 'package:tutorial_app/async/async_functions.dart';

void main(List<String> args) {
  // thenTutorial();
  // asyncAwaitTutorial();
  multipleRequestsTutorial();
}

Future<void> multipleRequestsTutorial() async {
  final stopwatch = Stopwatch()..start();

  print('Iniciando operación...');

  // final username = await fetchUsername();        ⏳ 3s
  // final productName = await fetchProductName();        + ⏳ 3s = 6s  ❌ Mal diseño

  final results = await Future.wait([               // ⏳ = 3s ✅ ¡Gud diseño!
    fetchUsername().catchError((error) {
      print('Error en petición 1: $error');
      return 'Nombre no encontrado';
    }),
    fetchProductName(),
  ]); 
  print('Resultado 1: ${results[0]}');
  print('Resultado 2: ${results[1]}');
  print('Todas las operaciones terminaron: ${stopwatch.elapsedMilliseconds} ms');
}

void thenTutorial() {
  final start = DateTime.now();
  print('Iniciando operación... $start');

  fetchUsername()
      .then((String name) {
        print('Nombre recibido: $name');
        print('Tiempo transcurrido: ${DateTime.now().difference(start)}');
      })
      .catchError((error) {
        print('Error detectado: $error');
      });

  print('El programa continúa... ${DateTime.now().difference(start)}');
}

Future<void> asyncAwaitTutorial() async {
  final start = DateTime.now();
  print('Iniciando operación... $start');

  try {
    final user = await fetchUsername();
    print('Usuario recibido: $user');
  } catch (error) {
    print('Ocurrió un error: $error');
  }

  print('Tiempo transcurrido: ${DateTime.now().difference(start)}');
}
