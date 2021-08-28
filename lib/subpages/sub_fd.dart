import 'package:flutter/material.dart';

class SubFD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foundation Day"),
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
                child: Image.asset('assets/images/fd.jpeg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\t On 25th December, MPBS celebrates its foundation day. On 25th December 1927 under the leadership of Dr. Ambedkar, Manusamriti was set on fire as a mark of destruction and rejection of the religious code of conduct which sanctifies caste and oppressive social structures denying basic human rights to women and SC/ST/OBCs.',
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
