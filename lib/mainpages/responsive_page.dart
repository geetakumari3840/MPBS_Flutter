import 'package:flutter/material.dart';

class ResPage extends StatefulWidget {
  // ResPage({Key key}) : super(key: key);

  @override
  _ResPageState createState() => _ResPageState();
}

class _ResPageState extends State<ResPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 580) {
        return Container(
          child: Column(
            children: [
              buildExpanded2(),
              buildExpanded1(),
              buildExpanded3(),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.brown,
                  height: 100,
                ),
              ),
            ],
          ),
        );
      } else {
        return Container(
          child: Row(
            children: [
              buildExpanded2(),
              buildExpanded1(),
              buildExpanded3(),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.brown,
                  height: 100,
                ),
              ),
            ],
          ),
        );
      }
    });
  }

  Expanded buildExpanded3() {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.red,
        height: 100,
      ),
    );
  }

  Expanded buildExpanded2() {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.pink,
        height: 100,
      ),
    );
  }

  Expanded buildExpanded1() {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.amber,
        height: 100,
        child: Text('Ajay'),
      ),
    );
  }
}
