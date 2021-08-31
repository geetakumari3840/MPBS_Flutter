class UserModel {
  int id;
  String name;
  String email;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
  });

  factory UserModel.formJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
    );
  }
  Map<String, dynamic> toJsonAdd() {
    return {
       "id": id,
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
}
