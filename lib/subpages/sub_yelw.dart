import 'package:flutter/material.dart';

class SubYELW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youth Empowerment Leadership Workshops"),
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
                '\t Youth are the backbone of the society. Their well being depends on the modern education and rational scientific attitude towards life. It is a source of constant energy for society. MPBS strives to engage and prepare youth to take future challenges and harness the global potential in leadership and innovations. Human management and technological advancement remains the thrust area of the initiative by disengaging youth from want of education, employment and purposelessness to emancipation empowerment and enlightenment.',
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
