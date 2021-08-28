import 'package:flutter/material.dart';

class SubSGF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayajirao Gaikwad Fellowship"),
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
                '\t MPBS has also constituted a fellowship in the name of his highness SAYAJI RAO GAIKWAD to recognize his contribution for awarding overseas fellowship to Dr. Ambedkar felicitating his education and transform him into Babasaheb Ambedkar. The scholarship is awarded to a student who has done exceedingly well despite having challenging socio-economic conditions. The scholarship carries an amount of Rs. 50,000/-',
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
