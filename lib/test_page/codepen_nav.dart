import 'package:flutter/material.dart';

double collapsableHeight = 0.0;
Color selected = Color(0xffffffff);
Color notSelected = Color(0xaffffffff);

class CodePenNav extends StatefulWidget {
  const CodePenNav({Key? key}) : super(key: key);

  @override
  _CodePenNavState createState() => _CodePenNavState();
}

class _CodePenNavState extends State<CodePenNav> {
  // get width => null;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        AnimatedContainer(
            margin: EdgeInsets.only(top: 79.0),
            duration: Duration(microseconds: 375),
            curve: Curves.ease,
            height: (width < 800.0) ? collapsableHeight : 0.0,
            width: double.infinity,
            color: Color(0xff121212),
            child: SingleChildScrollView(
              child: Column(children: navBarItem),
            )),
        Container(
          color: Color(0xff121212),
          height: 280.0,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'NevBar',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Color(0xffffffff),
                ),
              ),
              LayoutBuilder(builder: (context, constraints) {
                if (width < 800.0) {
                  return NavBarButton(
                    onPressed: () {
                      if (collapsableHeight == 0.0) {
                        setState(() {
                          collapsableHeight = 500;
                        });
                      } else if (collapsableHeight == 500.0) {
                        setState(() {
                          collapsableHeight = 0.0;
                        });
                      }
                    },
                  );
                } else {
                  return Row(
                    children: navBarItem,
                  );
                }
              })
            ],
          ),
        ),
      ],
    ));
  }
}

List<Widget> navBarItem = [
  NavBarItem(
    text: 'Home',
    // icon: Icons.home,
  ),
  NavBarItem(
    text: 'About',
  ),
  NavBarItem(
    text: 'Donation',
  ),
  NavBarItem(
    text: 'Picture',
  ),
  NavBarItem(
    text: 'Media',
  ),
  NavBarItem(
    text: 'Help',
  ),
];

class NavBarItem extends StatefulWidget {
  final String text;
  NavBarItem({
    required this.text,
  });
  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color color = notSelected;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        child: Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.white60,
        onTap: () {},
        child: Container(
            height: 60.0,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(widget.text,
                style: TextStyle(
                  fontSize: 16.0,
                  color: color,
                ))),
      ),
    ));
  }
}

class NavBarButton extends StatefulWidget {
  // const NavBarButton({Key? key}) : super(key: key);
  final Function onPressed;
  NavBarButton({
    required this.onPressed,
  });

  @override
  _NavBarButtonState createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55.0,
        width: 60.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xcffffffff),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Material(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: InkWell(
              splashColor: Colors.white60,
              onTap: () {
                setState(() {
                  widget.onPressed();
                });
              },
              child: Icon(
                Icons.menu,
                size: 30.0,
                color: Color(0xcfffffffff),
              )),
        ));
  }
}
