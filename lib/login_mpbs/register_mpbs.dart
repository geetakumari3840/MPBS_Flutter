import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:date_field/date_field.dart';
// ignore: import_of_legacy_library_into_null_safe
// import 'package:email_validator/email_validator.dart';

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
      Uri.parse("https://mpbsindia.org/Flutterreg/Regfrom"),
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
  // bool visible = false;

  // Getting value from TextField widget.
  dynamic setdates = "";
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final captchController = TextEditingController();

  Future userRegistration() async {
    // Showing CircularProgressIndicator.
    // setState(() {
    //   visible = true;
    // });

    // Getting value from Controller
    String name = nameController.text;
    String email = emailController.text;
    String mobile = mobileController.text;
    String captcha = captchController.text;

    // SERVER API URL
    var url = 'https://mpbsindia.org/flutterreg/test';

    // Store all data with Param Name.
    var data = {
      'name': name,
      'email': email,
      'mobile': mobile,
      'dob': setdates.toString(),
      'captcha': captcha,
      'createdate': DateTime.now().toString(),
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
      // visible = false;
      // _formKey.currentState?.reset();
      // nameController.text = '';
      // emailController.text = '';
      // mobileController.text = '';
      // captchController.text = '';
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
                setState(() {
                  // fetchCaptch();
                });
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

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Container(
          //   padding: EdgeInsets.all(10.0),
          //   child: TextFormField(
          //     controller: nameController,
          //     autocorrect: true,
          //     inputFormatters: [
          //       // ignore: deprecated_member_use
          //       new WhitelistingTextInputFormatter(RegExp("[a-zA-Z ]")),
          //     ],
          //     decoration: InputDecoration(
          //         hintText: 'Your Full Name ',
          //         prefixIcon: Icon(Icons.account_box_rounded)),
          //     // The validator receives the text that the user has entered.
          //     keyboardType: TextInputType.text,
          //     // inputFormatters: <TextInputFormatter>[
          //     //   FilteringTextInputFormatter.singleLineFormatter
          //     // ], //  /
          //     validator: (value) {
          //       if (value == null || value.isEmpty) {
          //         return 'Please enter some text';
          //       }
          //       return null;
          //     },
          //   ),
          // ),
          // Container(
          //   padding: EdgeInsets.all(10.0),
          //   child: TextFormField(
          //     controller: mobileController,
          //     autocorrect: true,
          //     decoration: InputDecoration(
          //         hintText: 'Mobile No.',
          //         prefixIcon: Icon(Icons.mobile_friendly)),
          //     keyboardType: TextInputType.number,
          //     inputFormatters: <TextInputFormatter>[
          //       FilteringTextInputFormatter.digitsOnly,
          //     ],
          //     validator: (value) {
          //       if (value == null || value.isEmpty) {
          //         return 'Please enter Mobile No.';
          //       } else if (value.runes.length == 10) {
          //         return null;
          //       } else {
          //         return 'Please enter 10 digit Mobile';
          //       }
          //     },
          //   ),
          // ),
          // Container(
          //   padding: EdgeInsets.all(10.0),
          //   child: TextFormField(
          //     controller: emailController,
          //     autocorrect: true,
          //     decoration: InputDecoration(
          //         hintText: 'Email Id',
          //         prefixIcon: Icon(Icons
          //             .email)), // The validator receives the text that the user has entered.
          //     validator: (value) => EmailValidator.validate(value!)
          //         ? null
          //         : "Please enter a valid email",
          //   ),
          // ),
          // Container(
          //   // width: 280,
          //   padding: EdgeInsets.all(10.0),
          //   child: DateTimeFormField(
          //     // controller: dobController,
          //     decoration: const InputDecoration(
          //       hintStyle: TextStyle(color: Colors.black45),
          //       errorStyle: TextStyle(color: Colors.redAccent),
          //       border: UnderlineInputBorder(),
          //       prefixIcon: Icon(Icons.event_note),
          //       labelText: 'Date of Birth',
          //     ),
          //     mode: DateTimeFieldPickerMode.date,
          //     autovalidateMode: AutovalidateMode.always,
          //     // initialDate: DateTime(2017),
          //     // onSaved: (value) {
          //     //   debugPrint(value.toString());
          //     // },
          //     onDateSelected: (DateTime dvalue) {
          //       if (dvalue.year == 2021) {
          //         setdates = "${dvalue.day}/${dvalue.month}/${dvalue.year}";
          //       } else {
          //         setdates = "";
          //       }
          //       // print(value);
          //     },
          //     validator: (val) {
          //       if (val != null) {
          //         return null;
          //       } else {
          //         return 'Date Field is Empty';
          //       }
          //     },
          //   ),
          // ),
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
              child: TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Captch';
                  } else if (value.runes.length == 4) {
                    return null;
                  } else {
                    return 'Please enter 4 digit Captch';
                  }
                },
                controller: captchController,
                autocorrect: true,
                decoration: InputDecoration(
                    hintText: 'Captch',
                    prefixIcon: Icon(Icons.local_convenience_store_outlined)),
              )),
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 16.0),
          //   child: ElevatedButton(
          //     onPressed: () {
          //       // Validate returns true if the form is valid, or false otherwise.
          //       if (_formKey.currentState!.validate()) {
          //         // If the form is valid, display a snackbar. In the real world,
          //         // you'd often call a server or save the information in a database.
          //         ScaffoldMessenger.of(context).showSnackBar(
          //           const SnackBar(content: Text('Processing Data')),
          //         );
          //       }
          //     },
          //     child: const Text('Submit'),
          //   ),
          // ),

          Center(
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  userRegistration();
                }
              },
              // color: Colors.green,
              // textColor: Colors.white,
              // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text('Registered'),
            ),
          ),
          // Visibility(
          //     visible: visible,
          //     child: Container(
          //         margin: EdgeInsets.only(bottom: 30),
          //         child: CircularProgressIndicator())),
        ],
      ),
    )));
  }
}
