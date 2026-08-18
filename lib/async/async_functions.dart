// Función que simula un retardo en la entrega de un dato o error
Future<String> fetchUsername() async {
  await Future.delayed(const Duration(seconds: 3));
  throw Exception('Error al obtener los datos');
  // return 'Fernando';
}

Future<String> fetchProductName() async {
  await Future.delayed(const Duration(seconds: 3));
  return 'Pc gaming';
}

