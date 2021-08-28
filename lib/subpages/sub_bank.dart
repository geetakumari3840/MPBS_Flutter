import 'package:flutter/material.dart';

class SubBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bank Details for Online / Cheque Payment"),
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
                                fontSize: 18,
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
                  'ACCOUNT NAME :',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'MISSION PAY BACK TO SOCIETY',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'ACCOUNT NO.:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 21,
                  ),
                ),
                Text(
                  '00000035231687987',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'IFSC :',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'SBIN0051016',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'BANK NAME :',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'STATE BANK OF INDIA',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'BRANCH NAME:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'SHASTRI NAGAR, GHAZIABAD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                  ),
                ),
                SizedBox(
                  height: 10.0,
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
      ),
    );
  }
}
