import 'dart:io';
import 'dart:convert';

Future<String> extractJsonContent(String route) async {
  final file = File(route);
  final content = await file.readAsString();
  return content;
}

List<dynamic> parseJson(String jsonString) {
  return jsonDecode(jsonString);
}

Future<void> saveJsonData(List<Map<String, Object?>> jsonData, String fileRoute) async {
  final jsonString = jsonEncode(jsonData); // Convierte la lista de mapas en un JSON string

  final file = File(fileRoute);
  await file.writeAsString(jsonString); // Escribe el JSON string en el fichero sugerido

  print('Archivo actualizado correctamente');
}
