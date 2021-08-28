import 'package:flutter/material.dart';

class VisionOne extends StatelessWidget {
  const VisionOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(children: [
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                height: 100.0,
                child: Image.asset(
                  'assets/images/amb1.png',
                  fit: BoxFit.contain,
                  // height: 200,
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: ListTile(
                title: Text("Life should be great rather than long",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                subtitle: Text("Dr. B. R. Ambedkar",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
