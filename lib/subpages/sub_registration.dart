import 'package:flutter/material.dart';

class SubRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/mpbsindia_logo.png',
                          fit: BoxFit.contain,
                          height: 60,
                        ),
                      ),
                      Container(
                        child: Text('Mission Pay back Society Ghaziabad UP',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                Divider(color: Colors.red),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'TRUST REGISTRATION NO. :',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
                Text(
                  '4/951/37-80/1038/15',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '12AA: REGISTRATION NO.:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'CITEXEMPTION, LUCKNOW/12AA/2017-18/A/10155',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'BY THE ORDER NO.:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'ITBA/EXEM/S/12AA/2017-18/1006153049(1) Dated 07/09/2017',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '80G: APPROVAL NO.:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'CITEXEMPTION, LUCKNOW/80G/2/017-18/A/10089 Dated 10/01/2018',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'ORDER NO.:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'ITBA/EXEM/S/80G/2017-18/1008204271 (1)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'PAN:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'AAETM2773J',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Image.asset(
                    'assets/images/registration.jpg',
                    fit: BoxFit.contain,
                    height: 150,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  color: Colors.pink,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Go back!'),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
