import 'dart:convert';

class User {
  final String? email;
  final String? password;
  final String? user_type;
  // final String? jargon;
  User({
    required this.email,
    required this.password,
    required this.user_type,
    // required this.jargon,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'user_type': user_type,
      // 'jargon': jargon,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    print("tes 5 ini di model user");
    return User(
      email: map['name'],
      password: map['password'],
      user_type: map['user_type'],
      // jargon: map['jargon'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
