import 'package:flutter/material.dart';

class SubDaa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dr. Ambedkar Academy"),
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
                child: Image.asset('assets/images/113.jpg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'SELF-STUDY CENTRE FOR YOUTH EMPOWERMENT',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "\t Students from rural background suffer considerably in terms of finding place and prope guidance for building their career and especially in highly digitalized techno savvy environment. They have very little means to cope up with the competitive world of metros and big cities. Even if they have resolve and potential to achieve the highest academic E administrative positions in the country, lack of equal opportunities and timely support result in unfullfilment of their dreams, wounded by the wrath of casteism and economie hardship in the villages. As a part of MPBS initiative, the first batch of students was started on 26 July 2016 on the occasion of 114th anniversary of representation day, as on this day in 1902, pillar of Socia Democracy, Bahujan Ruler Shahuji Maharaj provided 50% Bahujan representation in government and administration of Kolhapur. The beneficiaries of reservation have started this project with their commitment to the principle of 'Paying Back to the Society' as desired by Baba Saheb and popularized and executed by Bahujan Nayak Kanshiram. Therefore, in realizing this mission, the MPBS started training programmes of session of eleven months duration. A student can avail the facility for one session only.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'FACILITIES',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "\t The Academy provides dedicated guidance for SSC, Bank, Railways, SSS, Civil exams focusing on:\n \t Mathematics and Reasoning, English, spoken and written with Personality Development General Studies with Computer skills, Pay Back to Society and Leadership Strategies.\n \t Teaching and Accommodation is free however for food the students have to bear the actual expenses themselves. Academy is having a play ground, swimming pool, 24x7 electricity and water supply and a running kitchen facilities. The Academy is managed by the students themselves as a part of organizational and institutional internship. The objective is also om self-group study and making student's self-reliant on their own potential.",
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
