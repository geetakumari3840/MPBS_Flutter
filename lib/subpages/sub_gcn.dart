import 'package:flutter/material.dart';

class SubGCN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Global Community Network"),
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
                child: Image.asset('assets/images/wwa.jpg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\t Foundation of this centre is aimed at establishing dialogues with various groups of communities in the world who are engaged in democratic equality and share the same mission and vision of MPBS.',
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
