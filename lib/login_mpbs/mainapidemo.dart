import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:mpbsindia/login_mpbs/registe_user.dart';

class Mainapi extends StatefulWidget {
  const Mainapi({Key? key}) : super(key: key);

  @override
  _MainapiState createState() => _MainapiState();
}

class _MainapiState extends State<Mainapi> {
  getMethod() async {
    final response = await http.get(Uri.parse(
        'https://chameleonlike-house.000webhostapp.com/login/viewdata.php'));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print(response.body);
      return json.decode(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load data');
    }
  }

  deleteMethod(user) async {
    final response = await http.post(Uri.parse(
        'https://chameleonlike-house.000webhostapp.com/login/deletedata.php'));
    if (response.statusCode == 200) {
      print("Delete Response : " + response.body);
      return response.body;
    } else {
      return "Error";
    }
  }

  @override
  void initState() {
    super.initState();
    getMethod();
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
              ).then((value) => getMethod());
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
                var user = snap[index]['id'];
                return ListTile(
                    leading: GestureDetector(child: Icon(Icons.edit)),
                    onTap: () {
                      debugPrint('Edit Clicked');
                    },
                    // title: CircleAvatar(
                    //   child: Text("${snap[index]['name'][1]}"),
                    // ),
                    title: Text("Name : ${snap[index]['name']}"),
                    subtitle: Text("Email : ${snap[index]['email']}"),
                    trailing: GestureDetector(
                      child: Icon(Icons.delete),
                      onTap: () {
                        deleteMethod(user);
                        print(snap[index]);
                      },
                    ));
              });
        },
      ),
    );
  }
}
