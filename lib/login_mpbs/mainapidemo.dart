import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mpbsindia/login_mpbs/edit_user_test.dart';
import 'dart:convert';

import 'package:mpbsindia/login_mpbs/registe_user.dart';

class Mainapi extends StatefulWidget {
  const Mainapi({Key? key}) : super(key: key);

  @override
  _MainapiState createState() => _MainapiState();
}

class _MainapiState extends State<Mainapi> {
  //ADD RECORED

  getMethod() async {
    print("load data");
    final response = await http.get(Uri.parse(
        'https://chameleonlike-house.000webhostapp.com/login/viewdata.php'));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      // print(response.body);
      return json.decode(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load data....//');
    }
  }

//DELETE RECORED
  bool dvisible = false;
  Future deleteRegistration(snap) async {
    // Showing CircularProgressIndicator.
    setState(() {
      dvisible = true;
    });

    // SERVER API URL
    var url =
        'https://chameleonlike-house.000webhostapp.com/login/deletedata.php';

    // Store all data with Param Name.
    var data = {'id': snap};

    // Starting Web API Call.
    var response = await http.post(Uri.parse(url), body: json.encode(data));
    // print(response);
    // Getting Server response into variable.
    var message = jsonDecode(response.body);

    // If Web call Success than Hide the CircularProgressIndicator.
    if (response.statusCode == 200) {
      setState(() {
        dvisible = false;
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
  void initState() {
    super.initState();
    getMethod().whenComplete(() {
      setState(() {});
    });
    // getMethod();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter PHPSQL Reg'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegMyApp(),
                ),
              ).then((value) => setState(() {}));
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: FutureBuilder(
        future: getMethod(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          List snap = snapshot.data;
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text('Error fatching Data'),
            );
          }

          return ListView.builder(
              itemCount: snap.length,
              itemBuilder: (context, index) {
                // var user = snap[index]['id'];
                return ListTile(
                    leading: GestureDetector(child: Icon(Icons.edit)),
                    onTap: () {
                      // updateRegistration(snap[index]);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditUserTest(
                            value: snap[index]['id'],
                          ),
                        ),
                      );
                      // print("previous -> " + snap[index]['id']);
                    },
                    // title: CircleAvatar(
                    //   child: Text("${snap[index]['name'][1]}"),
                    // ),
                    title: Text("Name : ${snap[index]['name']}"),
                    subtitle: Text("Email : ${snap[index]['email']}"),
                    trailing: GestureDetector(
                      child: Icon(Icons.delete),
                      onTap: () {
                        deleteRegistration(snap[index]['id']);
                        // print(snap[index]['id']);
                      },
                    ));
              });
        },
      ),
    );
  }
}
