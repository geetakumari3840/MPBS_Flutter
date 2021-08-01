import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class ImpNews extends StatelessWidget {
  const ImpNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      clipBehavior: Clip.antiAlias,
      // height: 700.0,
      child: Column(children: [
        Container(
          height: 80.0,
          width: double.infinity,
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              '- सूचना -',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
        Container(
            color: Colors.white,
            height: 420.0,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Marquee(
                  text:
                      "DO THE FIVE\nHelp stop coronavirus\n1 HANDS Wash them often\n2 ELBOW Cough into it\n3 FACE Don't touch it\n4 SPACE Keep safe distance\n5 HOME Stay if you can",
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      color: Colors.grey[850],
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  scrollAxis: Axis.vertical,
                  blankSpace: 50,
                  velocity: 100,
                  pauseAfterRound: Duration(seconds: 2),
                  decelerationDuration: Duration(seconds: 2),
                  startPadding: 100),
            )),
      ]),
    );
  }
}
