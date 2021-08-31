import 'package:flutter/material.dart';
import 'package:mpbsindia/fluttercurd/addEditUser.dart';
import 'package:mpbsindia/fluttercurd/model/userModel.dart';
import 'package:mpbsindia/fluttercurd/service/userService.dart';
// import 'package:toast/toast.dart';

class MyAppSql extends StatefulWidget {
  @override
  _MyAppSqlState createState() => _MyAppSqlState();
}

class _MyAppSqlState extends State<MyAppSql> {
  List<UserModel> userList = <UserModel>[];
  bool loading = true;

  getAllUser() async {
    userList = await UserService().getUserData();
    setState(() {
      loading = false;
    });
    print("user : ${userList.length}");
  }

  @override
  void initState() {
    super.initState();
    getAllUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Model CRUD'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddEditUser(),
                  ));
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: userList.length,
              itemBuilder: (context, index) {
                UserModel user = userList[index];
                return ListTile(
                  title: Text(user.name),
                );
              }),
    );
  }
}
      // body: loading
      //     ? Center(
      //         child: CircularProgressIndicator(),
      //       )
      //     : ListView.builder(