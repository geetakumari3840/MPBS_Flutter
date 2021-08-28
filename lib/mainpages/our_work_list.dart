import 'package:flutter/material.dart';
import 'package:mpbsindia/subpages/sub_brc.dart';
import 'package:mpbsindia/subpages/sub_fd.dart';
import 'package:mpbsindia/subpages/sub_gcn.dart';
import 'package:mpbsindia/subpages/sub_kmc.dart';
import 'package:mpbsindia/subpages/sub_map.dart';
import 'package:mpbsindia/subpages/sub_sap.dart';
import 'package:mpbsindia/subpages/sub_sgf.dart';
import 'package:mpbsindia/subpages/sub_sps.dart';
import 'package:mpbsindia/subpages/sub_yelw.dart';

class OurWorkList extends StatelessWidget {
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
                      'Our Work',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(0, 0, 255, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Wrap(
                  // direction: Axis.vertical,
                  spacing: 2.0,
                  runSpacing: 30.0,
                  children: <Widget>[
                    Container(
                      width: 117.0,
                      child: ElevatedButton(
                        child: Column(
                          children: const <Widget>[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/images/msg.jpg'),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Sayajirao\nGaikwad\nFellowship',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SubSGF()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: 117.0,
                      child: ElevatedButton(
                        child: Column(
                          children: const <Widget>[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/images/ssp.jpg'),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Savitribai\nPhule\nScholarship',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SubSPS()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: 117.0,
                      child: ElevatedButton(
                        child: Column(
                          children: const <Widget>[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/images/map.jpeg'),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Medical\nAwareness\nProgrammes',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SubMAP()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: 125.0,
                      child: ElevatedButton(
                        child: Column(
                          children: const <Widget>[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/images/sap.jpeg'),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Social\nAwarness\nProgrammes',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SubSAP()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: 115.0,
                      child: ElevatedButton(
                        child: Column(
                          children: const <Widget>[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/images/bkn.jpg'),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Buddhist\nResearch\nCentre',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SubBRC()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: 115.0,
                      child: ElevatedButton(
                        child: Column(
                          children: const <Widget>[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/images/kmc.jpeg'),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Kanshiram\nMedia\nCentre',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SubKMC()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: 115.0,
                      child: ElevatedButton(
                        child: Column(
                          children: const <Widget>[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/images/bkn.jpg'),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Global\nCommunity\nNetwork',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SubGCN()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: 127.0,
                      child: ElevatedButton(
                        child: Column(
                          children: const <Widget>[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/images/bkn.jpg'),
                            ),
                            Text(
                              'Youth\nEmpowerment\nLeadership\nWorkshops',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SubYELW()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: 113.0,
                      child: ElevatedButton(
                        child: Column(
                          children: const <Widget>[
                            CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/images/fd.jpeg'),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Foundation\nDay',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SubFD()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
                // )
              ]))),
    );
  }
}
//   Card(
//                       child: Container(
//                         height: 40,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15.0),
//                             image: DecorationImage(
//                                 fit: BoxFit.cover,
//                                 image: AssetImage('assets/images/bkn.jpg'))),
//                         child: Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Text('Savitribai\nPhule\nPScholarships'),
//                         ),
//                       ),
//                       margin:
//                           EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
//                     ),
//                     Card(
//                       child: Container(
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: AssetImage("assets/images/bkn.jpg"),
//                             fit: BoxFit.fitWidth,
//                             alignment: Alignment.topCenter,
//                           ),
//                         ),
//                         child: Text("YOUR TEXT"),
//                       ),
//                     ),