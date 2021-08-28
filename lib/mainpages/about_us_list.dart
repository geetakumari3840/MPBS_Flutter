import 'package:flutter/material.dart';
import 'package:mpbsindia/subpages/sub_ao.dart';
import 'package:mpbsindia/subpages/sub_registration.dart';
import 'package:mpbsindia/subpages/sub_thevision.dart';
import 'package:mpbsindia/subpages/sub_wwa.dart';

class AboutUsList extends StatelessWidget {
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
                      'About Us',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(0, 0, 255, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Wrap(
                  // margin: EdgeInsets.symmetric(vertical: 10.0),
                  // height: 120,
                  spacing: 10.0,
                  runSpacing: 30.0,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        // color: Colors.yellow,
                        width: 70.0,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const <Widget>[
                            Icon(
                              Icons.groups,
                              color: Colors.blue,
                              size: 50.0,
                            ),
                            Text(
                              'Who We Are',
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
                          MaterialPageRoute(builder: (context) => SubWWA()),
                        );
                      },
                    ),
                    InkWell(
                      child: Container(
                        // color: Colors.yellow,
                        width: 70.0,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const <Widget>[
                            Icon(
                              Icons.visibility,
                              color: Colors.blue,
                              size: 50.0,
                            ),
                            Text(
                              'The Vision',
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
                          MaterialPageRoute(builder: (context) => SubVision()),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        child: Container(
                          // color: Colors.yellow,
                          width: 85.0,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const <Widget>[
                              Icon(
                                Icons.emoji_objects_outlined,
                                color: Colors.blue,
                                size: 50.0,
                              ),
                              Text(
                                'Aim & Objective',
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
                            MaterialPageRoute(builder: (context) => SubAO()),
                          );
                        },
                      ),
                    ),
                    InkWell(
                      child: Container(
                        width: 75.0,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          // mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Icon(
                              Icons.app_registration,
                              color: Colors.blue,
                              size: 50.0,
                            ),
                            Text(
                              'Registration',
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
                              builder: (context) => SubRegistration()),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
              ]))),
    );
  }
}

//  Container(
//                       width: 80.0,
//                       child: ElevatedButton(
//                         child: Column(
//                           children: const <Widget>[
//                             Icon(
//                               Icons.group_work_outlined,
//                               color: Colors.blue,
//                               size: 50.0,
//                             ),
//                             Text(
//                               'Who We Are',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 15,
//                               ),
//                             ),
//                           ],
//                         ),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => SubWWA()),
//                           );
//                         },
//                         style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all(Colors.white),
//                         ),
//                       ),
//                     ),