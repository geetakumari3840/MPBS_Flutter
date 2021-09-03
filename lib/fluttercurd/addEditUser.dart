import 'package:flutter/material.dart';
import 'package:mpbsindia/fluttercurd/model/userModel.dart';
import 'package:mpbsindia/fluttercurd/service/userService.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:toast/toast.dart';

class AddEditUser extends StatefulWidget {
  // const AddEditUser({Key? key}) : super(key: key);
  final UserModel userModel;
  final int index;

  AddEditUser({required this.userModel, required this.index});

  @override
  _AddEditUserState createState() => _AddEditUserState();
}

class _AddEditUserState extends State<AddEditUser> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  bool editMode = false;

  add(UserModel userModel) async {
    await UserService().addUser(userModel).then((sucess) {
      Toast.show('Add sucessfuly !!', context,
          gravity: Toast.CENTER, duration: 2);
      Navigator.pop(context);
      // print("Add sucessfuly !!");
    });
  }

  update(UserModel userModel) async {
    await UserService().updateUser(userModel).then((sucess) {
      Toast.show('Update sucessfuly !!', context,
          gravity: Toast.CENTER, duration: 2);
      Navigator.pop(context);
      // print("Add sucessfuly !!");
    });
  }

  void iniState() {
    super.initState();
    editMode = true;
    if (widget.index != 0) {
      name.text = widget.userModel.name;
      email.text = widget.userModel.email;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(editMode ? "Update User" : 'Add User'),
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
                if (editMode) {
                  UserModel userModel = UserModel(
                      id: widget.userModel.id,
                      name: name.text,
                      email: email.text);
                  update(userModel);
                } else {
                  if (name.text.isEmpty) {
                    Toast.show('This filed is required.', context,
                        gravity: Toast.CENTER, duration: 2);
                  } else {
                    UserModel userModel = UserModel(
                        id: widget.userModel.id,
                        name: name.text,
                        email: email.text);
                    update(userModel);
                  }
                }
              },
              child: Text(editMode ? "Update" : 'Save')),
        ],
      ),
    );
  }
}
