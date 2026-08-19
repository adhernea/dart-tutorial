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