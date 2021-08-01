import 'package:flutter/material.dart';
import 'package:mpbsindia/utiles/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/login2.png',
                fit: BoxFit.fill,
                height: 300.0,
              ),
              SizedBox(
                height: 20.0,
                child: Text('*********'),
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                child: Text('*********'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 18.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Ente User Name",
                        labelText: "User Name",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Ente Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                      // child: Text('space'),
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 50,
                        width: changeButton ? 50 : 150,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: Text('Login'),
                    //   style: TextButton.styleFrom(minimumSize: Size(130, 40)),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
