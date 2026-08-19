import 'package:json_data/data/files_routes.dart';
import 'package:json_data/utils/json_file_manager.dart';

Future<void> main() async {
  final usersJson = extractJsonContent(FilesRoutes.userJson);
  print(usersJson);
}
