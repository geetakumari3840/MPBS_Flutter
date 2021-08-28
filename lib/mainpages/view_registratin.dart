import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// void main() => runApp(MyApp());

class ViewMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('JSON ListView in Flutter')),
        body: JsonListView(),
      ),
    );
  }
}

class Fruitdata {
  String id;
  String userId;
  String title;

  Fruitdata({
    required this.id,
    required this.userId,
    required this.title,
  });

  factory Fruitdata.fromJson(Map<String, dynamic> json) {
    return Fruitdata(
      id: json['id'],
      userId: json['required'],
      title: json['title'],
    );
  }
}

class JsonListView extends StatefulWidget {
  JsonListViewWidget createState() => JsonListViewWidget();
}

class JsonListViewWidget extends State<JsonListView> {
  final String uri = 'https://jsonplaceholder.typicode.com/albums';

  Future<List<Fruitdata>> fetchFruits() async {
    var response = await http.get(Uri.parse(uri));

    if (response.statusCode == 200) {
      final items = json.decode(response.body).cast<Map<String, dynamic>>();

      List<Fruitdata> listOfFruits = items.map<Fruitdata>((json) {
        return Fruitdata.fromJson(json);
      }).toList();

      return listOfFruits;
    } else {
      throw Exception('Failed to load data.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Fruitdata>>(
      future: fetchFruits(),
      builder: (context, snapshot) {
        if (!snapshot.hasData)
          return Center(child: CircularProgressIndicator());

        return ListView(
          children: snapshot.data!
              .map((data) => ListTile(
                    title: Text(data.id),
                    subtitle: Text(data.title),
                    onTap: () {
                      print(data.id);
                      print(data.title);
                    },
                  ))
              .toList(),
        );
      },
    );
  }
}
