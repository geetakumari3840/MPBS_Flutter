import 'package:flutter/material.dart';

class SubBRC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buddhist Research Centre "),
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
                '\t As per fundamental duties enshrined in the constitution of India under article 51, MPBS is focusing to inculcate scientific rational and egalitarian thinking and temperament. As a part of such initiative, Buddhist Research Centre (BRC) is also being developed in the campus. The centre will encourage studies on philosophical intellectual Buddhism as a socio-culture intellectual tradition of knowledge and associated way of life.',
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
