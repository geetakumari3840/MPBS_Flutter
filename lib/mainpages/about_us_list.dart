import 'package:flutter/material.dart';

class AboutUsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        color: Colors.white,
        child: Column(children: [
          Container(
            color: Colors.blue,
            width: double.infinity,
            // decoration: BoxDecoration(
            //     border: Border.all(
            //       color: Colors.red,
            //     ),
            //     borderRadius: BorderRadius.all(Radius.circular(20))),
            //     borderRadius: BorderRadius.only(
            // topRight: Radius.circular(40.0),
            // bottomRight: Radius.circular(40.0),
            // topLeft: Radius.circular(40.0),
            // bottomLeft: Radius.circular(40.0)),
            child: ListTile(
              leading: Icon(
                Icons.group,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'My Self',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Divider(color: Colors.black),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 100.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          icon: const Icon(
                            Icons.volume_up,
                            color: Color.fromRGBO(0, 0, 255, 1),
                            size: 60,
                          ),
                          tooltip: 'Increase volume by 10',
                          onPressed: () {},
                        ),
                      ),
                      Text(
                        'About Us',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          icon: const Icon(
                            Icons.volume_up,
                            color: Color.fromRGBO(0, 0, 255, 1),
                            size: 60,
                          ),
                          tooltip: 'Increase volume by 10',
                          onPressed: () {},
                        ),
                      ),
                      Text(
                        'Who We Are',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          icon: const Icon(
                            Icons.volume_up,
                            color: Color.fromRGBO(0, 0, 255, 1),
                            size: 60,
                          ),
                          tooltip: 'Increase volume by 10',
                          onPressed: () {},
                        ),
                      ),
                      Text(
                        'The Vision',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          icon: const Icon(
                            Icons.volume_up,
                            color: Color.fromRGBO(0, 0, 255, 1),
                            size: 60,
                          ),
                          tooltip: 'Increase volume by 10',
                          onPressed: () {},
                        ),
                      ),
                      Text(
                        'Aim & Objective',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(6.0),
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: <Widget>[
                //       Icon(
                //         Icons.lightbulb_outline,
                //         color: Colors.black,
                //         size: 60,
                //       ),
                //       Container(
                //         color: Colors.yellow.shade600,
                //         // padding: const EdgeInsets.all(8),
                //         width: 200.0,
                //         height: 100.0,
                //         child: Text(
                //           'ajay ajayajayaj ayajayaj ayajay ayajay ayajay ayajay ajay',
                //           textAlign: TextAlign.center,
                //           style: TextStyle(
                //             color: Colors.black,
                //             fontSize: 20,
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Container(
                //   color: Colors.red,
                //   width: 200.0,
                //   child: Text(
                //     'ajay',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(
                //       color: Colors.yellowAccent,
                //       fontSize: 20,
                //     ),
                //   ),
                // ),
                // Container(
                //   width: 200.0,
                //   color: Colors.yellow,
                //   child: Card(
                //     child: ListTile(
                //       onTap: () {
                //         Navigator.of(context).pushReplacementNamed('/');
                //       },
                //       leading: Icon(
                //         Icons.home,
                //         color: Colors.black,
                //         size: 40.0,
                //       ),
                //       title: Text("Who We Are"),
                //       // subtitle: Text("Subtitle Image"),
                //     ),
                //   ),
                // ),
                // Container(
                //   width: 200.0,
                //   child: Card(
                //     child: Wrap(
                //       children: <Widget>[
                //         // icon:
                //         // Image.asset("assets/images/mpbsindia_logo.png"),
                //         ListTile(
                //           onTap: () {
                //             Navigator.of(context).pushReplacementNamed('/');
                //           },
                //           leading: Icon(
                //             Icons.cloud,
                //             color: Colors.black,
                //             size: 40.0,
                //           ),
                //           title: Text("The Vision"),
                //           // subtitle: Text("Subtitle Image"),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // Container(
                //   width: 200.0,
                //   child: Card(
                //     child: Wrap(
                //       children: <Widget>[
                //         // icon:
                //         // Image.asset("assets/images/mpbsindia_logo.png"),
                //         ListTile(
                //           onTap: () {
                //             Navigator.of(context).pushReplacementNamed('/');
                //           },
                //           leading: Icon(
                //             Icons.arrow_circle_down_rounded,
                //             color: Colors.black,
                //             size: 40.0,
                //           ),
                //           title: Text("Aim & Objective"),
                //           // subtitle: Text("Subtitle Image"),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
