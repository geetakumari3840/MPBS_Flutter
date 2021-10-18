import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// class Album {
//   final String aid;
//   final String aname;
//   final String aemail;
//   final String apassword;

//   Album(
//       {required this.aid,
//       required this.aname,
//       required this.aemail,
//       required this.apassword});

//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       aid: json['id'],
//       aname: json['name'],
//       aemail: json['email'],
//       apassword: json['password'],
//     );
//   }
// }

class EditUserTest extends StatefulWidget {
  final String value;

  EditUserTest({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  _EditUserTestState createState() => _EditUserTestState();
}

class _EditUserTestState extends State<EditUserTest> {
  late String getDatai;
  late String getDatan;
  late String getDatae;
  late String getDatap;
  Future fetchData() async {
    var data = {'id': widget.value};
    print(data);
    var url =
        'https://chameleonlike-house.000webhostapp.com/login/fatchdata.php';
    var response = await http.post(Uri.parse(url), body: json.encode(data));
    if (response.statusCode == 200) {
      print(json.decode(response.body)['id']);
      // return jsonDecode(response.body);

      getDatai = json.decode(response.body)['id'];
      getDatan = json.decode(response.body)['name'];
      getDatae = json.decode(response.body)['email'];
      getDatap = json.decode(response.body)['password'];
    } else {
      throw Exception('Failed to load data');
    }
  }

  final idController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchData().whenComplete(() {
      setState(() {});
      idController.text = getDatai;
      nameController.text = getDatan;
      emailController.text = getDatae;
      passwordController.text = getDatap;
    });
  }

  bool uvisible = false;
  updateData() async {
    setState(() {
      uvisible = true;
    });

    String id = widget.value;
    String name = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    // SERVER API URL
    var url =
        'https://chameleonlike-house.000webhostapp.com/login/updatedata.php';

    // Store all data with Param Name.
    var data = {'id': id, 'name': name, 'email': email, 'password': password};
    // print(data);
    // Starting Web API Call.
    var response = await http.post(Uri.parse(url), body: json.encode(data));

    // Getting Server response into variable.
    var message = jsonDecode(response.body);

    // If Web call Success than Hide the CircularProgressIndicator.
    if (response.statusCode == 200) {
      setState(() {
        uvisible = false;
      });
    }

    // Showing Alert Dialog with Response JSON Message.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(message),
          actions: <Widget>[
            ElevatedButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Update Registration Test Form'),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: <Widget>[
              // Container(
              //   width: 280,
              //   padding: EdgeInsets.all(10.0),
              //   child: TextField(
              //     // initialValue: 'fsaf',
              //     controller: idController,
              //     autocorrect: true,
              //     decoration: const InputDecoration(
              //       hintText: 'Enter id',
              //     ),
              //   ),
              // ),
              Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: nameController,
                  autocorrect: true,
                  decoration: const InputDecoration(
                    hintText: 'Enter name',
                  ),
                ),
              ),
              Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: emailController,
                  autocorrect: true,
                  decoration: const InputDecoration(
                    hintText: 'Enter email',
                  ),
                ),
              ),
              Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: passwordController,
                  autocorrect: true,
                  decoration: const InputDecoration(
                    hintText: 'Enter password',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: updateData,
                child: Text('Update Register User Online'),
              ),
              Visibility(
                  visible: uvisible,
                  child: Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: CircularProgressIndicator())),
            ],
          ),
        )));
  }
}
