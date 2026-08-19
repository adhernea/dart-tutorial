import 'package:json_data/models/user_address.dart';

class User {
  final int id;
  final String name;
  final String surname;
  final String email;
  final int age;
  final bool active;
  final List<String> roles;
  final UserAddress address;

  User({
    required this.id,
    required this.name,
    required this.surname,
    required this.email,
    required this.age,
    required this.active,
    required this.roles,
    required this.address,
  });
}