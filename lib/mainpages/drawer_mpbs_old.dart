import 'package:flutter/material.dart';
import 'package:mpbsindia/test_page.dart/test1.dart';

class DrawerMpbs extends StatelessWidget {
  // const DrawerMpbs({Key? key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 2);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Material(
          color: Colors.blueAccent,
          child: ListView(
            padding: padding,
            children: <Widget>[
              Container(
                // height: 60.0,
                // decoration: BoxDecoration(
                //   color: Colors.pink,
                // ),
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/mpbsindia_logo.png',
                        fit: BoxFit.contain,
                        height: 50,
                      ),
                    ),
                    Container(
                      child: Text('Mission Pay back Society Ghaziabad UP',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              Divider(color: Colors.red),
              // buildMenuItem(
              //   text: 'Home',
              //   icon: Icons.home,
              //   onClicked: () => selectedItem(context, 0),
              // ),

              const SizedBox(height: 16),

              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/test');
                },
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              ExpansionTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text("Dropdown Menu",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    )),
                children: <Widget>[
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/test');
                    },
                    leading: Icon(
                      Icons.map,
                      color: Colors.white,
                    ),
                    title: Text(
                      'map',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'People',
                icon: Icons.people,
                onClicked: () => selectedItem(context, 1),
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'Map',
                icon: Icons.map,
                onClicked: () => selectedItem(context, 2),
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'setting',
                icon: Icons.accessibility_sharp,
                onClicked: () => selectedItem(context, 3),
              ),
              const SizedBox(height: 24),
              Divider(color: Colors.red),
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'Who I am',
                icon: Icons.group,
                onClicked: () => selectedItem(context, 4),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          // ignore: non_constant_identifier_names
          builder: (Context) => TestPage(),
        ));
        break;
      // case 1:
      // Navigator.of(context).push(MaterialPageRoute(
      // builder: (Context) => LoginPage(),
      // ));
      // break;
    }
  }
}
