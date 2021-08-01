import 'package:flutter/material.dart';

class VisionTwo extends StatelessWidget {
  const VisionTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Wrap(
        children: <Widget>[
          Text("THE VISION",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 50,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            title: Text(
                "Mission Pay Back to Society is our initiative to develop young talent of the society and foster in them a sense of confidence, purpose and social commitment.",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            subtitle: Text(
                "मिशन पे बैक टू सोसाइटी, समाज की युवा प्रतिभा को विकसित करने और उनमें विश्वास, उद्देश्य और सामाजिक प्रतिबद्धता की भावना को बढ़ावा देने के लिए हमारी एक पहल है |",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: SizedBox(
              width: 180.0,
              height: 40.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {},
                child: Text(
                  'Read More',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    // fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
