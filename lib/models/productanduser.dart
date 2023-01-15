import 'dart:convert';

import 'package:bansosku/models/user.dart';

class UserProduct {
  final String jenis;
  final String merk;
  final String satuan;
  final String kuantitas;
  late User user;

  UserProduct({
    required this.jenis,
    required this.merk,
    required this.satuan,
    required this.kuantitas,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return {
      'jenis': jenis,
      'merk': merk,
      'satuan': satuan,
      'kuantitas': kuantitas,
      'userid': user,
    };
  }

  factory UserProduct.fromMap(Map<String, dynamic> map) {
    print("tes 4 ini di modal userproduct");
    print(map);
    return UserProduct(
      jenis: map['jenis'],
      merk: map['merk'],
      satuan: map['satuan'],
      kuantitas: map['kuantitas'],
      user: User.fromJson(json.encode(map['user_id'])),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserProduct.fromJson(String source) =>
      UserProduct.fromMap(json.decode(source));
}
