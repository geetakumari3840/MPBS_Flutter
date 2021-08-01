import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100.0,
        color: Colors.black,
        width: double.infinity,
        child: Center(
          child: Text(
              'Copyright 2021 reserved by \n Mission Pay Back Society, Ghaziabad',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
