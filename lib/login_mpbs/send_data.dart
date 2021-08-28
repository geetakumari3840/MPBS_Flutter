// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:toast/toast.dart';

// Future<Album> createAlbum(String title) async {
//   final response = await http.post(
//     Uri.parse('https://jsonplaceholder.typicode.com/albums'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//       'title': title,
//     }),
//   );

//   if (response.statusCode == 201) {
//     // If the server did return a 201 CREATED response,
//     // then parse the JSON.
//     return Album.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 201 CREATED response,
//     // then throw an exception.
//     throw Exception('Failed to create album.');
//   }
// }

// class Album {
//   final int id;
//   final String title;

//   Album({required this.id, required this.title});

//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }

// // void main() {
// //   runApp(const MyApp());
// // }

// class SendMyApp extends StatefulWidget {
//   const SendMyApp({Key? key}) : super(key: key);

//   @override
//   _SendMyAppState createState() {
//     return _SendMyAppState();
//   }
// }

// class _SendMyAppState extends State<SendMyApp> {
//   TextEditingController name = TextEditingController();
//   TextEditingController mobile = TextEditingController();
//   TextEditingController email = TextEditingController();
//   TextEditingController pass = TextEditingController();
//   TextEditingController repass = TextEditingController();
//   TextEditingController dob = TextEditingController();
//   TextEditingController captch = TextEditingController();

//   // final TextEditingController _controller = TextEditingController();
//   // Future<Album>? _futureAlbum;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Create Data Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SingleChildScrollView(
//         child: Scaffold(
//           appBar: AppBar(
//             title: const Text('Create Data Example'),
//           ),
//           body: Container(
//             alignment: Alignment.center,
//             padding: const EdgeInsets.all(8.0),
//             child:
//                 (_futureAlbum == null) ? buildColumn() : buildFutureBuilder(),
//           ),
//         ),
//       ),
//     );
//   }

//   Column buildColumn() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         TextField(
//           controller: name,
//           decoration: const InputDecoration(hintText: 'Full Name'),
//         ),
//         TextField(
//           controller: mobile,
//           decoration: const InputDecoration(hintText: 'Mobile Number'),
//         ),
//         TextField(
//           controller: email,
//           decoration: const InputDecoration(hintText: 'Email Id'),
//         ),
//         TextField(
//           controller: pass,
//           decoration: const InputDecoration(hintText: 'Create Password'),
//         ),
//         TextField(
//           controller: repass,
//           decoration: const InputDecoration(hintText: 'Re-enter Password'),
//         ),
//         TextField(
//           controller: dob,
//           decoration: const InputDecoration(hintText: 'Captch'),
//         ),
//         TextField(
//           controller: captch,
//           decoration: const InputDecoration(hintText: 'Enter Title'),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             if (name.text.isEmpty) {
//               Toast.show('This filed is required.', context,
//                   gravity: Toast.CENTER, duration: 2);
//             } else {
//               UserModel userModel = UserModel(id: 0, email: '', name: '');
//               add(userModel);
//             }
//           },
//           child: const Text('Submit'),
//         ),
//       ],
//     );
//   }

//   FutureBuilder<Album> buildFutureBuilder() {
//     return FutureBuilder<Album>(
//       future: _futureAlbum,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return Text("Data Send Succfully!!");
//         } else if (snapshot.hasError) {
//           return Text('${snapshot.error}');
//         }

//         return const CircularProgressIndicator();
//       },
//     );
//   }
// }
