import 'package:flutter/material.dart';
import 'package:mpbsindia/subpages/construction.dart';
import 'package:mpbsindia/subpages/sub_bank.dart';
import 'package:mpbsindia/subpages/sub_qr.dart';

class DonationList extends StatelessWidget {
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
                    color: const Color(0xFFDFF8EA),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: double.infinity,
                  child: ListTile(
                    leading: Icon(
                      Icons.ac_unit_sharp,
                      color: Color.fromRGBO(0, 128, 0, 1),
                      size: 30,
                    ),
                    title: Text(
                      'Donation',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(0, 128, 0, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Wrap(
                  spacing: 10.0,
                  runSpacing: 30.0,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        width: 75.0,
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Icon(
                              Icons.qr_code,
                              color: Colors.blue,
                              size: 40.0,
                            ),
                            Text(
                              'QR Code',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SubQR()),
                        );
                      },
                    ),
                    InkWell(
                      child: Container(
                        // color: Colors.yellow,
                        width: 75.0,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const <Widget>[
                            CircleAvatar(
                              radius: 20.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/images/paytm.png'),
                            ),
                            // Icon(
                            //   Icons.group_work_outlined,
                            //   color: Color.fromRGBO(0, 0, 255, 1),
                            //   size: 40.0,
                            // ),
                            Text(
                              'PayTm',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.red,
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
                        width: 75.0,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const <Widget>[
                            Icon(
                              Icons.business,
                              color: Colors.blue,
                              size: 40.0,
                            ),
                            Text(
                              'Bank',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SubBank()),
                        );
                      },
                    ),
                    InkWell(
                      child: Container(
                        // color: Colors.yellow,
                        width: 75.0,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const <Widget>[
                            Icon(
                              Icons.book_online,
                              color: Colors.blue,
                              size: 40.0,
                            ),
                            Text(
                              'OnLine',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.red,
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
                  ],
                ),
                SizedBox(height: 20.0),
              ]))),
    );
  }
}
