import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Album {
  final String aid;
  final String aname;
  final String aemail;
  final String apassword;

  Album(
      {required this.aid,
      required this.aname,
      required this.aemail,
      required this.apassword});

  factory Album.fromJson(Map<String, dynamic> json) {
    print(Album);
    return Album(
      aid: json['id'],
      aname: json['name'],
      aemail: json['email'],
      apassword: json['password'],
    );
  }
}

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
  Future<Album> fetchData() async {
    var data = {'id': widget.value};
    print(data);
    var url =
        'https://chameleonlike-house.000webhostapp.com/login/fatchdata.php';
    var response = await http.post(Uri.parse(url), body: json.encode(data));
    if (response.statusCode == 200) {
      print(json.decode(response.body));
      return Album.fromJson(jsonDecode(response.body));
      // setState(() {
      //   fvalue = json.decode(response.body)['id'];
      // });
    } else {
      throw Exception('Failed to load data');
    }
  }

  final id = TextEditingController();
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchData();
    // print(fvalue);
    // fatchValue();
    // _futureAlbum = fetchData()
    //// id.text = fatchValue.toString();
    ///

    id.text = '22';
    name.text = 'sfaf';
    email.text = "myEmail";
    password.text = "myPassword";
  }

  bool uvisible = false;
  updateData() async {
    setState(() {
      uvisible = true;
    });

    // String id = id.text;
    // String name = name.text;
    // String email = email.text;
    // String password = password.text;

    // SERVER API URL
    var url =
        'https://chameleonlike-house.000webhostapp.com/login/updatedata.php';

    // Store all data with Param Name.
    var data = {'id': id, 'name': name, 'email': email, 'password': password};
    print(data);
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
              // Container(child: Text(myMap[0].toString())),
              Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: id,
                  // controller: TextEditingController(
                  //     text: snapshot.data!.id),
                  decoration: const InputDecoration(
                    hintText: 'Enter id',
                  ),
                ),
              ),
              Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: name,
                  // controller: TextEditingController(
                  //     text: snapshot.data!.name),
                  decoration: const InputDecoration(
                    hintText: 'Enter name',
                  ),
                ),
              ),
              Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: email,
                  // controller: TextEditingController(
                  //     text: snapshot.data!.email),
                  decoration: const InputDecoration(
                    hintText: 'Enter email',
                  ),
                ),
              ),
              Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: password,
                  // controller: TextEditingController(
                  //     text: snapshot.data!.password),
                  decoration: const InputDecoration(
                    hintText: 'Enter password',
                  ),
                ),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     // setState(() {
              //     //   _futureAlbum = updateAlbum(_controller.text);
              //     // });
              //   },
              //   child: const Text('Update Data'),
              // ),
              ElevatedButton(
                onPressed: updateData,
                // color: Colors.green,
                // textColor: Colors.white,
                // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Click Here To Register User Online'),
              ),
              Visibility(
                  visible: uvisible,
                  child: Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: CircularProgressIndicator())),

              // Container(
              //   alignment: Alignment.center,
              //   padding: const EdgeInsets.all(8.0),
              //   child: FutureBuilder<Album>(
              //     future: _futureAlbum,
              //     builder: (context, snapshot) {
              //       if (snapshot.connectionState == ConnectionState.done) {
              //         if (snapshot.hasData) {
              //           return Column(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: <Widget>[
              //               Text(snapshot.data!.id),
              //               Text(snapshot.data!.name),
              //               Text(snapshot.data!.email),
              //               Text(snapshot.data!.password),

              //             ],
              //           );
              //         } else if (snapshot.hasError) {
              //           return Text('${snapshot.error}');
              //         }
              //       }

              //       return const CircularProgressIndicator();
              //     },
              //   ),
              // ),
              // ElevatedButton(
              //   onPressed: updateData(context),
              //   // color: Colors.green,
              //   // textColor: Colors.white,
              //   // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              //   child: Text('Update Register User Online'),
              // ),
              // Visibility(
              //     visible: uvisible,
              //     child: Container(
              //         margin: EdgeInsets.only(bottom: 30),
              //         child: CircularProgressIndicator())),
            ],
          ),
        )));
  }
}
