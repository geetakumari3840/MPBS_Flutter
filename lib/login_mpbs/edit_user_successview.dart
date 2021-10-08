import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class EditUserTest extends StatefulWidget {
  final String value;
  const EditUserTest({Key? key, required this.value}) : super(key: key);

  @override
  _EditUserTestState createState() => _EditUserTestState();
}

class _EditUserTestState extends State<EditUserTest> {
  bool evisible = false;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future fetchData() async {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Update Registration Test Form'),
        ),
        body: FutureBuilder(
          future: fetchData(),
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
                  return ListTile(
                      leading: GestureDetector(child: Icon(Icons.edit)),
                      onTap: () {},
                      title: Text("Name : ${snap[index]['name']}"),
                      subtitle: Text("Email : ${snap[index]['email']}"),
                      trailing: GestureDetector(
                        child: Icon(Icons.delete),
                      ));
                });
          },
        ));
  }
}
