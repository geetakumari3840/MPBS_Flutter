import 'package:flutter/material.dart';

class WwaPage extends StatelessWidget {
  const WwaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      clipBehavior: Clip.antiAlias,
      // height: 700.0,
      child: Column(children: [
        Container(
          height: 80.0,
          width: double.infinity,
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'WHO WE ARE',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
              color: Colors.white,
              // height: 500.0,
              child: Text(
                  'Our personal power, positions, privileges and prosperity are results of our forefathers relentless struggle and untold sacrifices. All we owe today, is in direct proportion to our debt to the community we are born in. This debt must be paid back to the society with selfless commitment with time, talent and treasure we possess so that our posterity flourish in an egalitarian and sane society.')),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
              color: Colors.white,
              // height: 500.0,
              child: Text(
                  'हमारी व्यक्तिगत शक्ति, पद, विशेषाधिकार और समृद्धि हमारे पूर्वजों के अथक संघर्ष और अनकहे बलिदानों का परिणाम हैं । आज हम जो कुछ भी अर्जित कर रहे हैं, उस पर हमारे समुदाय का भी हक है, उस समुदाय का जिसमे हम पैदा हुए हैं हम पर ऋण है । इस ऋण का भुगतान समाज को निस्वार्थ प्रतिबद्धता के साथ हमे समय, प्रतिभा और दान के रूप में वापस किया जाना आवश्यक है, क्योकि हमारे पास इतना कुछ है कि हमारी भावी पीढ़ी का विकास एक समतावादी और समझदार समाज के रूप में विकसित हो सके।')),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          child: SizedBox(
            width: 180.0,
            height: 40.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // background
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
      ]),
    );
  }
}
