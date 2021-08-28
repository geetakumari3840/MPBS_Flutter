// To parse this JSON data, do
//
//     final Userviews = UserviewsFromMap(jsonString);

import 'dart:convert';
import 'package:http/http.dart' as http;

List<Userviews> userviewsFromJson(String str) =>
    List<Userviews>.from(json.decode(str).map((x) => Userviews.fromMap(x)));

String userviewsToJson(List<Userviews> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Userviews {
  Userviews({
    required this.id,
    required this.name,
    required this.email,
  });

  String id;
  String name;
  String email;

  factory Userviews.fromMap(Map<String, dynamic> json) => Userviews(
        id: json["id"],
        name: json["name"],
        email: json["email"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
      };
}
