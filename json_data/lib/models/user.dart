import 'package:json_data/models/user_address.dart';

class User {
  final int id;
  final String name;
  final String surname;
  final String email;
  int age;
  final bool active;
  List<String> roles;
  UserAddress address;

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

  static User fromJson(Map<String, Object?> json) {
    return User(
      id: json['id'] as int,
      name: json['name'] as String,
      surname: json['surname'] as String,
      email: json['email'] as String,
      age: json['age'] != null ? json['age'] as int : 0,
      active: json['active'] as bool,
      roles: (json['roles'] as List).cast<String>(),
      address: UserAddress.fromJson(json['address'] as Map<String, Object?>),
    );
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'name': name,
      'surname': surname,
      'email': email,
      'age': age,
      'active': active,
      'roles': roles,
      'address': address.toJson(),
    };
  }

  @override
  String toString() {
    return '''
    [$id] $name $surname, $age.
    ${address.street}, ${address.city}, ${address.island}, ${address.country}.
    cuenta (${active ? 'Activa' : 'Inhabilitada'}): $email.
    roles: $roles.
    ''';
  }
}
