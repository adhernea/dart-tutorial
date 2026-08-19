import 'package:json_data/data/files_routes.dart';
import 'package:json_data/utils/json_file_manager.dart';

Future<void> main() async {
  final usersJsonString = await extractJsonContent(FilesRoutes.userJson);
  print(usersJsonString);

  final usersJson = parseJson(usersJsonString);
  print(usersJson);
}
