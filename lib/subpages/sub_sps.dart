import 'package:flutter/material.dart';

class SubSPS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Savitribai Phule Scholarship"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Image.asset('assets/images/sgf.jpeg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\t MPBS provides Savitribai Phule scholarship for meritorious students of class 10th and 12th who despite economic and social hardship have scored remarkable grades. The society has constituted Savitribai Phule scholarship for 20 students annually keeping in mind the pioneer contribution made by her for starting first girl school in India on 1st January 1848.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
