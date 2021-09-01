class UserModel {
  final String id;
  final String name;
  final String email;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
  });

  factory UserModel.formJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
    );
  }
  Map<String, dynamic> toJsonAdd() {
    return {
      "name": name,
      "email": email,
    };
  }

  Map<String, dynamic> toJsonUpdate() {
    return {
      "id": id,
      "name": name,
      "email": email,
    };
  }

  Map<String, dynamic> toJsonDelete() {
    return {
      "id": id,
      "name": name,
      "email": email,
    };
  }
}
