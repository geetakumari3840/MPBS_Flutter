import 'package:flutter/material.dart';

class SubSAP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social Awareness Programmes"),
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
                child: Image.asset('assets/images/sap.jpeg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\t Young students staying in the hostel organize functions and social awareness programmes commemorating 26th November, Constitution Day; 26 January, Republic Day: 15th August, Independence Day and other historical occasions of Bahujan history and social transformation and political empowerment movement.',
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
