import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// class Album {
//   final int id;
//   final String name;
//   final String email;
//   final String password;

//   Album(
//       {required this.id,
//       required this.name,
//       required this.email,
//       required this.password});

//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       id: json['id'],
//       name: json['name'],
//       email: json['email'],
//       password: json['password'],
//     );
//   }
// }

class EditUser extends StatefulWidget {
  final String value;
  const EditUser({Key? key, required this.value}) : super(key: key);

  @override
  _EditUserState createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  final TextEditingController id = TextEditingController(text: "dd");
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  // late Future<Album> _futureAlbum;

  bool evisible = false;
  @override
  void initState() {
    super.initState();
    // fechData();
  }

  fechData() async {
    setState(() => evisible = true);

// Store all data with Param Name.
    var data = {'id': widget.value};
    print(data);

    // SERVER API URL
    var url =
        'https://chameleonlike-house.000webhostapp.com/login/fatchdata.php';

    // Starting Web API Call.
    var response = await http.post(Uri.parse(url), body: json.encode(data));

    // Getting Server response into variable.
    var message = jsonDecode(response.body);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      print(json.decode(response.body));

      return json.decode(response.body);
      // return Album.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load data');
    }

    // Showing Alert Dialog with Response JSON Message.
    // ignore: dead_code
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

  //Edit or UPdate Data
  // Boolean variable for CircularProgressIndicator.
  bool uvisible = false;

  // Getting value from TextField widget.
  // final idController = TextEditingController(text: "28");
  // final nameController = TextEditingController(text: "ajay Kumar");
  // final emailController = TextEditingController(text: "ajay Kumar");
  // final passwordController = TextEditingController(text: "ajay Kumar");

  final idController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future updateRegistration() async {
    // Showing CircularProgressIndicator.
    setState(() {
      uvisible = true;
    });

    // Getting value from Controller
    // String id = idController.text;
    // String name = nameController.text;
    // String email = emailController.text;
    // String password = passwordController.text;

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
          title: Text('Update Registration Form'),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: <Widget>[
              Container(
                // alignment: Alignment.center,
                // padding: const EdgeInsets.all(8.0),
                child: FutureBuilder(
                  future: fechData(),
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
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => EditUser(
                                //       value: snap[index]['id'],
                                //     ),
                                //   ),
                                // );
                                // print(snap[index]['id']);
                              },
                              // title: CircleAvatar(
                              //   child: Text("${snap[index]['name'][1]}"),
                              // ),

                              title: Text("Name : ${snap[index]['name']}"),
                              subtitle: Text("Email : ${snap[index]['email']}"),
                              trailing: GestureDetector(
                                child: Icon(Icons.delete),
                                onTap: () {
                                  // deleteRegistration(snap[index]['id']);
                                  // print(snap[index]['id']);
                                },
                              ));
                        });
                  },
                ),
              ),
              Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: TextEditingController(text: "Null"),
                    autocorrect: true,
                    decoration: InputDecoration(hintText: 'Your ID'),
                  )),
              Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: name,
                    autocorrect: true,
                    decoration:
                        InputDecoration(hintText: 'Enter Your Name Here'),
                  )),
              Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: email,
                    autocorrect: true,
                    decoration:
                        InputDecoration(hintText: 'Enter Your Email Here'),
                  )),
              Container(
                  width: 280,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    controller: password,
                    autocorrect: true,
                    obscureText: true,
                    decoration:
                        InputDecoration(hintText: 'Enter Your Password Here'),
                  )),
              ElevatedButton(
                onPressed: updateRegistration,
                // color: Colors.green,
                // textColor: Colors.white,
                // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
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
