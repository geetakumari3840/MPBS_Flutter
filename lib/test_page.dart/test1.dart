import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

void main() => runApp(TestPage());

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Maps Launcher Demo',
          ),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => MapsLauncher.launchQuery(
                      'Central Park, Shastri Nagar, Kanpur, Uttar Pradesh, India'),
                  child: Text('LAUNCH QUERY'),
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () => MapsLauncher.launchCoordinates(
                      26.469011799655554,
                      80.29583655276349,
                      'Google Headquarters are here'),
                  child: Text('LAUNCH COORDINATES'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
