import 'dart:convert';

class FutureUserModel {
  final String name;
  final String email;

  FutureUserModel({
    required this.name,
    required this.email,
  });

  FutureUserModel copyWith({
    String? name,
    String? email,
  }) {
    return FutureUserModel(
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'name': name});
    result.addAll({'email': email});
  
    return result;
  }

  factory FutureUserModel.fromMap(Map<String, dynamic> map) {
    return FutureUserModel(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FutureUserModel.fromJson(String source) => FutureUserModel.fromMap(json.decode(source));

  @override
  String toString() => 'UserModel(name: $name, email: $email)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is FutureUserModel &&
      other.name == name &&
      other.email == email;
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode;
}
