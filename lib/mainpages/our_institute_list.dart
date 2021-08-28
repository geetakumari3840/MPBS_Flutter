import 'package:flutter/material.dart';
import 'package:mpbsindia/subpages/construction.dart';
import 'package:mpbsindia/subpages/sub_daa.dart';

class OurInstituteList extends StatelessWidget {
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
                    blurRadius: 20.0,
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
                      'Our Institue',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(0, 0, 255, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Wrap(
                  spacing: 10.0,
                  runSpacing: 30.0,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        // color: Colors.yellow,
                        width: 100.0,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const <Widget>[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/images/ambedkarji.jpg'),
                            ),
                            Text(
                              'Dr. Ambedkar Academy',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SubDaa()),
                        );
                      },
                    ),
                    InkWell(
                      child: Container(
                        // color: Colors.yellow,
                        width: 100.0,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const <Widget>[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/images/ssp.jpg'),
                            ),
                            Text(
                              'Savitri Bai Phule Academy',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SubConstruction()),
                        );
                      },
                    ),
                    InkWell(
                      child: Container(
                        // color: Colors.yellow,
                        width: 100.0,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const <Widget>[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/images/bkn.jpg'),
                            ),
                            Text(
                              'Baba Khushyal Nath Self Study Centre',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SubConstruction()),
                        );
                      },
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ]))),
    );
  }
}
