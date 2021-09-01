import 'package:flutter/material.dart';
import 'package:mpbsindia/fluttercurd/addEditUser.dart';
import 'package:mpbsindia/fluttercurd/model/userModel.dart';
import 'package:mpbsindia/fluttercurd/service/userService.dart';
import 'package:toast/toast.dart';

class UserView extends StatefulWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  _UserViewState createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  late List<UserModel> userList;
  bool loading = true;

  getAllUser() async {
    userList = await UserService().getUser();
    setState(() {
      loading = false;
    });
    print("user : ${userList.length}");
  }

  delete(UserModel userModel) async {
    await UserService().deleteUser(userModel);
    setState(() {
      loading = false;
      getAllUser();
    });
    Toast.show('Delete sucessfuly !!', context,
        gravity: Toast.CENTER, duration: 2);
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
        title: Text('MODEL CRUD'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddEditUser(),
                ),
              ).then((value) => getAllUser());
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddEditUser(
                            userModel: user,
                            index: index,
                          ),
                        ),
                      ).then((value) => getAllUser());
                    },

                    // leading: GestuText(user.name),reDetector(child: Icon(Icons.edit)),
                    leading: CircleAvatar(
                      child: Text(user.name[0]),
                    ),
                    title: Text(user.name),
                    subtitle: Text(user.email),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        delete(user);
                      },
                    ));
              }),
    );
  }
}
