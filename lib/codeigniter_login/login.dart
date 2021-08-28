import 'package:flutter/material.dart';
import 'package:mpbsindia/codeigniter_login/screens/home.dart';
import 'package:mpbsindia/codeigniter_login/screens/signin.dart';
import 'package:mpbsindia/codeigniter_login/screens/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyAppc(),
//   ));
// }

class MyAppc extends StatefulWidget {
  @override
  _MyAppcState createState() => _MyAppcState();
}

class _MyAppcState extends State<MyAppc> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPref();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/amb1.png",
              fit: BoxFit.fill,
            ),
          ),
          (_loginStatus == 1) ? Home() : SignIn()
        ],
      ),
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      // routes: <String, WidgetBuilder>{
      //   '/signin': (BuildContext context) => new SignIn(),
      //   '/signup': (BuildContext context) => new SignUp(),
      //   '/home': (BuildContext context) => new Home(),
      // },
    );
  }

  var _loginStatus = 0;
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      _loginStatus = preferences.getInt("value")!;
    });
  }
}
