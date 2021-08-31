import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mpbsindia/fluttercurd/addEditUser.dart';
import 'package:mpbsindia/fluttercurd/model/userModel.dart';
import 'package:mpbsindia/fluttercurd/service/userService.dart';

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
    print("userList.length");
  }

  @override
  void initState(){
    super.initState();
    getAllUser();
  }
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
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: loading ? Center(child: CircularProgressIndicator(),)
      itemCount: userList.lenght,
      itemBuilder:(context,index){
        userModel user = userList[index];
        return ListTile(
          title: Text(user.name),

        )
      }
    );
  }
}
