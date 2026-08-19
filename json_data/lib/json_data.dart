import 'package:json_data/data/files_routes.dart';
import 'package:json_data/models/user.dart';
import 'package:json_data/models/user_address.dart';
import 'package:json_data/utils/json_file_manager.dart';

Future<void> main() async {
  final usersJsonString = await extractJsonContent(FilesRoutes.userJson);

  final usersJson = parseJson(usersJsonString);

  final List<User> users = usersJson.map((userData) => User.fromJson(userData)).toList();

  users.forEach(print);

  User firstUser = users.first;
  firstUser.address = UserAddress(
    street: 'Calle La Inventada',
    city: 'Alojera',
    island: 'La Gomera',
    country: 'Españita',
  );

  users.last.roles = ['user', 'papafrita'];

  var yaizaUsers = users.where((User user) => user.name == 'Yaiza').toList();
  if (yaizaUsers.firstOrNull != null) {
    yaizaUsers.first.age = 33;
  }

  print(users);
}
