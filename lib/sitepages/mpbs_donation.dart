import 'package:flutter/material.dart';
// import 'package:marquee/marquee.dart';

class MpbsDonate extends StatelessWidget {
  // const MpbsDonate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: Image.asset("assets/images/donation1.jpg")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: Image.asset("assets/images/donation2.jpg")),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
