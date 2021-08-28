import 'package:flutter/material.dart';

class SubMAP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medical Awareness Programmes"),
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
                child: Image.asset('assets/images/map.jpeg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\t From time to time MPBS conducts medical awareness programme camps for the needy. especially rural people in and around the academy. On the occasion of Independence. Day 2016 and 2017 medical camps were attended by many people. Doctors and medical experts from renowned hospitals provided medical advice and free medicines were distributed by the society. The society engages itself in medical and health awareness programme including cleanliness and hygiene.',
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
