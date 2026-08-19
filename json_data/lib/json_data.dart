import 'package:json_data/data/files_routes.dart';
import 'package:json_data/models/user.dart';
import 'package:json_data/utils/json_file_manager.dart';

Future<void> main() async {
  final usersJsonString = await extractJsonContent(FilesRoutes.userJson);

  final usersJson = parseJson(usersJsonString);

  final List<User> users = usersJson.map(
    (userData) => User.fromJson(userData)
  ).toList();

  users.forEach(print);

}
