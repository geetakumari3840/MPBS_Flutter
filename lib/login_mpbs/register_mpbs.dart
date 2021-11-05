import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:date_field/date_field.dart';

class RegMyMpbs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('MPBS Registration Form')),
        body: Center(child: RegisterUser()));
  }
}

class RegisterUser extends StatefulWidget {
  RegisterUserState createState() => RegisterUserState();
}

class RegisterUserState extends State {
  Future fetchCaptch() async {
    final response = await http.get(
      Uri.parse("http://192.168.29.157/MPBSINDIA_ORG/Flutterreg/Regfrom"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      // setState(() {
      //   captchcode = jsonDecode(response.body)['thumbnailUrl'];
      // });
      // return jsonDecode(response.body);
      return jsonDecode(response.body)['thumbnailUrl'];
    } else {
      throw Exception('Failed to load data');
    }
  }

  // Boolean variable for CircularProgressIndicator.
  bool visible = false;
  dynamic setdates = "";
  // Getting value from TextField widget.
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  // dynamic setdates;
  final captchController = TextEditingController();

  Future userRegistration() async {
    // Showing CircularProgressIndicator.
    setState(() {
      visible = true;
    });

    // Getting value from Controller
    String name = nameController.text;
    String email = emailController.text;
    String mobile = mobileController.text;
    String captcha = captchController.text;

    // SERVER API URL
    var url = 'http://192.168.29.157/MPBSINDIA_ORG/Flutterreg/submitmpbss';

    // Store all data with Param Name.
    var data = {
      'name': name,
      'email': email,
      'mobile': mobile,
      'dob': setdates.toString(),
      'captcha': captcha,
    };
    print(data);
    // print(name);
    // print(json.encode(data));
    var response = await http.post(Uri.parse(url), body: json.encode(data));
    // var response = await http.post(Uri.parse(url), body: data);

    // Getting Server response into variable.
    var message = jsonDecode(response.body);

    // If Web call Success than Hide the CircularProgressIndicator.
    if (response.statusCode == 200) {
      setState(() {
        visible = false;
        nameController.text = '';
        emailController.text = '';
        mobileController.text = '';
        DateTime.now();
        captchController.text = '';
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
    fetchCaptch().whenComplete(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
      child: Column(
        children: <Widget>[
          // Padding(
          //     padding: const EdgeInsets.all(12.0),
          //     child: Text('MPBS Registration Form',
          //         style: TextStyle(fontSize: 21))),
          Divider(),
          Container(
              // width: 290,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: nameController,
                autocorrect: true,
                decoration: InputDecoration(
                    hintText: 'Your Full Name ',
                    prefixIcon: Icon(Icons.account_box_rounded)),
              )),
          Container(
              // width: 290,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: emailController,
                autocorrect: true,
                decoration: InputDecoration(
                    hintText: 'Email Id', prefixIcon: Icon(Icons.email)),
              )),
          Container(
              // width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: mobileController,
                autocorrect: true,
                decoration: InputDecoration(
                    hintText: 'Mobile No.',
                    prefixIcon: Icon(Icons.mobile_friendly)),
              )),
          // Container(
          //     width: 280,
          //     padding: EdgeInsets.all(10.0),
          //     child: TextField(
          //       controller: dobController,
          //       autocorrect: true,
          //       decoration:
          //           const InputDecoration(labelText: 'Your Date of Birth'),
          //     )),
          // Container(
          //   child: Image.network(captchcode.toString(), scale: 1.0),
          // ),
          Container(
            // width: 280,
            padding: EdgeInsets.all(10.0),
            child: DateTimeFormField(
              decoration: const InputDecoration(
                hintStyle: TextStyle(color: Colors.black45),
                errorStyle: TextStyle(color: Colors.redAccent),
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.event_note),
                labelText: 'Date of Birth',
              ),
              mode: DateTimeFieldPickerMode.date,
              autovalidateMode: AutovalidateMode.always,
              // validator: (e) =>
              //     (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
              onDateSelected: (DateTime value) {
                setState(() {
                  setdates = value;
                });
                print(value);
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: FutureBuilder(
              future: fetchCaptch(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network(snapshot.data!.toString()),
                      ],
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                }

                return const CircularProgressIndicator();
              },
            ),
          ),
          Container(
              // width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: captchController,
                autocorrect: true,
                decoration: InputDecoration(
                    hintText: 'Captch',
                    prefixIcon: Icon(Icons.local_convenience_store_outlined)),
              )),
          ElevatedButton(
            onPressed: userRegistration,
            // color: Colors.green,
            // textColor: Colors.white,
            // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text('Registered'),
          ),
          Visibility(
              visible: visible,
              child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: CircularProgressIndicator())),
        ],
      ),
    )));
  }
}
