import 'dart:convert';
import 'package:mpbsindia/fluttercurd/model/userModel.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

// ignore: import_of_legacy_library_into_null_safe
// import 'package:toast/toast.dart';

class UserService {
  static const ADD_URL =
      "https://chameleonlike-house.000webhostapp.com/fluttercrud/add.php";

  static const VIEW_URL =
      "https://chameleonlike-house.000webhostapp.com/fluttercrud/view.php";
  static const UPDATE_URL =
      "https://chameleonlike-house.000webhostapp.com/fluttercrud/update.php";
  static const DELETE_URL =
      "https://chameleonlike-house.000webhostapp.com/fluttercrud/delete.php";
  Future<String> addUser(UserModel userModel) async {
    final response =
        await http.post(Uri.parse(ADD_URL), body: userModel.toJsonAdd());
    if (response.statusCode == 200) {
      print("Add Response : " + response.body);
      return response.body;
    } else {
      return "Error";
    }
  }

  List<UserModel> userFormJson(String jsonString) {
    final data = json.decode(jsonString);
    return List<UserModel>.from(data.map((item) => UserModel.formJson(item)));
  }

  Future<List<UserModel>> getUser() async {
    final response = await http.get(Uri.parse(VIEW_URL));

    if (response.statusCode == 200) {
      List<UserModel> list = userFormJson(response.body);

      return list;
    } else {
      // return List<UserModel>();
      return <UserModel>[];
    }
  }

  Future<String> updateUser(UserModel userModel) async {
    final response =
        await http.post(Uri.parse(UPDATE_URL), body: userModel.toJsonUpdate());
    if (response.statusCode == 200) {
      print("Update Response : " + response.body);
      return response.body;
    } else {
      return "Error";
    }
  }

  Future<String> deleteUser(UserModel userModel) async {
    final response =
        await http.post(Uri.parse(DELETE_URL), body: userModel.toJsonDelete());
    if (response.statusCode == 200) {
      print("Delete Response : " + response.body);
      return response.body;
    } else {
      return "Error";
    }
  }
}
