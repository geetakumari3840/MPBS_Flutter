import 'package:flutter/material.dart';

class ListViewItems extends StatelessWidget {
  const ListViewItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueAccent,
      child: ListView(
        children: <Widget>[
          const SizedBox(height: 16),
          Container(
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
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          Divider(color: Colors.red),
          // const SizedBox(height: 5),
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
          ExpansionTile(
            leading: Icon(
              Icons.group,
              color: Colors.white,
            ),
            title: Text("About Us",
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
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text(
                  'Who We Are',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
                leading: Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text(
                  'The Vision',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
                leading: Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text(
                  'Aim & Objective',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(
              Icons.group_work,
              color: Colors.white,
            ),
            title: Text("Our Work",
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
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text(
                  'Savitribai Phule Scholarships',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
                leading: Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text(
                  'Sayajirao Gaikwad Fellowship',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
                leading: Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text(
                  'Medical Awareness Programmes',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/test');
                },
                leading: Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text(
                  'Social Awarness Programmes',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
                leading: Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text(
                  'Buddhist Research Centre (BRC)',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
                leading: Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text(
                  'Global Community Network',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/test');
                },
                leading: Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text(
                  'Youth Empowerment Leadership Workshops',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
                leading: Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text(
                  'Kanshiram Media Centre',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
                leading: Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text(
                  'Foundation Day',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(
              Icons.school,
              color: Colors.white,
            ),
            title: Text("Our Institute",
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
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text(
                  'Dr. Ambedkar Academy',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
                leading: Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text(
                  'Savitri Bai Phule Academy',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
                leading: Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                title: Text(
                  'Baba Khushyal Nath Self Study Centre',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/test');
            },
            leading: Icon(
              Icons.save,
              color: Colors.white,
            ),
            title: Text(
              'Donation',
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
              Icons.photo,
              color: Colors.white,
            ),
            title: Text(
              'Photo Gallery',
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
              Icons.movie,
              color: Colors.white,
            ),
            title: Text(
              'Media',
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
              Icons.mail,
              color: Colors.white,
            ),
            title: Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
