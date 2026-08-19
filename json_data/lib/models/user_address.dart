class UserAddress {
  final String street;
  final String city;
  final String island;
  final String country;

  UserAddress({
    required this.street,
    required this.city,
    required this.island,
    required this.country,
  });

  static UserAddress fromJson(Map<String, Object?> json) {
    return UserAddress(
      street: json['street'] as String,
      city: json['city'] as String,
      island: json['island'] as String,
      country: json['country'] as String,
    );
  }

 Map<String, Object?> toJson() {
    return {
      'street': street,
      'city': city,
      'island': island,
      'country': country,
    };
  }
}