import 'package:flutter/material.dart';

class VisionOne extends StatelessWidget {
  const VisionOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Wrap(
        children: <Widget>[
          Image.asset("assets/images/mpbsindia_logo.png"),
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            title: Text("Life should be great rather than long",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
            subtitle: Text("Dr. B. R. Ambedkar",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
