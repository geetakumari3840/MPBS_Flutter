import 'package:flutter/material.dart';

class SubDonationOne extends StatelessWidget {
  // const VisionOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      alignment: Alignment.center,
      // height: 100.0,
      child: Image.asset(
        'assets/images/donation1.jpg',
        fit: BoxFit.contain,
        // height: 200,
      ),
    );
  }
}
