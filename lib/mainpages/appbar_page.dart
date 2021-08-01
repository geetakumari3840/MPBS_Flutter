import 'package:flutter/material.dart';

class ApparPage extends StatelessWidget {
  // const appBarPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/images/mpbsindia_logo.png',
            fit: BoxFit.contain,
            height: 40,
          ),
          Container(
              padding: const EdgeInsets.all(8.0), child: Text('MPBSINDIA')),
          Image.asset(
            'assets/images/Buddhist_flag.jpg',
            fit: BoxFit.contain,
            height: 32,
          ),
        ],
      ),
    );
  }
}
