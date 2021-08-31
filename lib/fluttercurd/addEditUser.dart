import 'package:flutter/material.dart';
import 'package:mpbsindia/fluttercurd/model/userModel.dart';
import 'package:mpbsindia/fluttercurd/service/userService.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:toast/toast.dart';

class AddEditUser extends StatefulWidget {
  // const AddEditUser({Key? key}) : super(key: key);

  @override
  _AddEditUserState createState() => _AddEditUserState();
}

class _AddEditUserState extends State<AddEditUser> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  add(UserModel userModel) async {
    await UserService().addUser(userModel).then((sucess) {
      Toast.show('Add sucessfuly !!', context,
          gravity: Toast.CENTER, duration: 2);
      // print("Add sucessfuly !!");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add User'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                controller: name,
                decoration: InputDecoration(hintText: "Enter Name")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                controller: email,
                decoration: InputDecoration(hintText: "Enter Email")),
          ),
          ElevatedButton(
              onPressed: () {
                if (name.text.isEmpty) {
                  Toast.show('This filed is required.', context,
                      gravity: Toast.CENTER, duration: 2);
                } else {
                  UserModel userModel = UserModel(
                    name: name.text,
                    email: email.text, 
                  );
                  add(userModel);
                }
              },
              child: Text('Save')),
        ],
      ),
    );
  }
}
