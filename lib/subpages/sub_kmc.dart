import 'package:flutter/material.dart';

class SubKMC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kanshiram Media Centre"),
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
                child: Image.asset('assets/images/kmc.jpeg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\t MPBS is in the process of developing Manyavar Kanshiram Media Centre for spreading the democratic egalitarian philosophy of social revolutionaries who have dedicated their life for the self respect movement. Also the media centre intends to raise the voice of the masses, and to communicate and coordinate MPBS activities. MPBS  organizes media training camps and internship programme for young boys and girls. ',
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
