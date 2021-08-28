import 'package:flutter/material.dart';

class ContentUsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                // border: Border.all(
                //   color: Colors.black,
                //   width: 2,
                // ),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F5F7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: double.infinity,
                  child: ListTile(
                    leading: Icon(
                      Icons.ac_unit_sharp,
                      color: Color.fromRGBO(0, 0, 255, 1),
                      size: 30,
                    ),
                    title: Text(
                      'Contact Us',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(0, 0, 255, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.red,
                                width: .05,
                              ),
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.red,
                                  blurRadius: 5.0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'HEAD OFFICE',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                Text(
                                  'J-4105, Gaur Green City,\n Indrapuram Ghaziabad,\n Utter Pradesh - 201010',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(children: [
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 25,
                                                  child: Image.asset(
                                                      'assets/images/Google_Maps.jpg'),
                                                ),
                                                Text(
                                                  '- Google Map',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.bold,
                                                    // decoration: TextDecoration.underline,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 25,
                                                  child: Image.asset(
                                                      'assets/images/what3words.png'),
                                                ),
                                                Text(
                                                  '- What3Words',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.bold,
                                                    // decoration: TextDecoration.underline,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              ],
                            )),
                      ),
                      // Divider(color: Colors.red),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.blue,
                              width: 0.5,
                            ),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.blueAccent,
                                blurRadius: 5.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'DR. AMBEDKAR ACADEMY',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Text(
                                'Dr. Ambedkar Academy, \nMasouta Link Road, \nJindal Nagar NH-24,\n Ghaziabad (U.P.) -245304',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 25,
                                                child: Image.asset(
                                                    'assets/images/Google_Maps.jpg'),
                                              ),
                                              Text(
                                                '- Google Map',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.bold,
                                                  // decoration: TextDecoration.underline,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 25,
                                                child: Image.asset(
                                                    'assets/images/what3words.png'),
                                              ),
                                              Text(
                                                '- What3Words',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.bold,
                                                  // decoration: TextDecoration.underline,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.green,
                              width: 0.5,
                            ),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.greenAccent,
                                blurRadius: 5.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'SAVITRI BAI PHULE ACADEMY',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Text(
                                'Sangh Mitra Bauddha Vihar, \nBudh Vihar, Sector 14, \nKaushambi, ghaziabad,\n Uttar Pradesh 201010',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 25,
                                                child: Image.asset(
                                                    'assets/images/Google_Maps.jpg'),
                                              ),
                                              Text(
                                                '- Google Map',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.bold,
                                                  // decoration: TextDecoration.underline,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 25,
                                                child: Image.asset(
                                                    'assets/images/what3words.png'),
                                              ),
                                              Text(
                                                '- What3Words',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.bold,
                                                  // decoration: TextDecoration.underline,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]))),
    );
  }
}
