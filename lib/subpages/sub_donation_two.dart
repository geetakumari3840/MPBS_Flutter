import 'package:flutter/material.dart';

class SubDonationTwo extends StatelessWidget {
  // const VisionOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.centerRight,
                  height: 150.0,
                  child: Image.asset(
                    'assets/images/mpbsindia_logo.png',
                    fit: BoxFit.contain,
                    height: 200,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                alignment: Alignment.centerRight,
                // height: 100.0,
                child: Image.asset(
                  'assets/images/donation2.jpg',
                  fit: BoxFit.contain,
                  // height: 200,
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
