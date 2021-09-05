import 'package:flutter/material.dart';
import 'package:mpbsindia/fluttercurd/userview.dart';
import 'package:mpbsindia/login_mpbs/registe_user.dart';
import 'package:mpbsindia/subpages/sub_daa_info.dart';

class InfoPage extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipOval(
                  child: Container(
                    height: 40,
                    child: Image.asset('assets/images/ambedkarji.png'),
                  ),
                ),
                Container(
                  child: Image.asset(
                    'assets/images/mpbsindia_logo.png',
                    fit: BoxFit.contain,
                    height: 55,
                  ),
                ),
                ClipOval(
                  child: Container(
                    height: 40,
                    child: Image.asset('assets/images/Buddhist_flag.jpg'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              // height: 60.0,
              width: double.infinity,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 2.0, color: Colors.red),
                  // left: BorderSide(width: 1.0, color: Colors.blue),
                  // right: BorderSide(width: 1.0, color: Colors.yellow),
                  bottom: BorderSide(width: 2.0, color: Colors.red),
                ),
              ),
              child: Text(
                'अनुशिक्षण (कोचिंग) केंद्र',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Text(
                'डॉ. अम्बेडकर अकादमी, मसौता, गाजियाबाद (उ.प्र.) आर्थिक रूप से कमजोर मेधावी छात्रों के लिए आई.ए.एस./पी.सी.एस., एस.एस.सी. की परीक्षाओँ हेतु निःशुल्क आवासीय स्वाध्याय/अनुशिक्षण (कोचिंग) केंद्र',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
              // child: Text('*********'),
            ),
            Container(
              child: Text(
                'मिशन पे बैक टु सोसाइटी, गाजियाबाद',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            Container(
              child: Text(
                'द्वारा संचालित',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Text(
                'डॉ. अम्बेडकर अकादमी में आर्थिक रूप से कमजोर मेधावी छात्रों के लिए आई.ए.एस./पी.सी.एस., एस.एस.सी. प्रतियोगितात्मक परीक्षाओं के लिए निःशुल्क स्वाध्याय/अनुशिक्षण (कोचिंग) हेतु बैच 2021 के लिए आवेदन- पत्र आमंत्रित हैं। लिखित परीक्षा सिविल सर्विसेज एवं एस.एस.सी. के लिए अलग-अलग होगी। सिविल सर्विसेज की लिखित परीक्षा का पाठ्यक्रम सिविल सर्विसेज परीक्षा (प्रा.) के अनुसार एवं एस.एस.सी. की लिखित परीक्षा का पाठ्यक्रम, एस.एस.सी. टियर-1 के अनुसार होगा। ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Text(
                'डॉ. म्बेडकर अकादमी में अनुशिक्षण (कोचिंग) हेतु पंजीकरण का विकल्प सदैव के लिए खुला रहेगा | आपको अपना पंजीकरण केवल एक ईमेल से मात्र एक बार करना अनिवार्य है | प्रवेश परीक्षा में सम्लित होने के लिए, डॉ. अम्बेडकर अकादमी / मिशन पे बैक टु सोसाइटी, गाजियाबाद द्वारा वेबसाइट / ईमेल के माद्यम से आपको समय-समय पर सूचित किया जायेगा | परीक्षा स्थल पर आपको केवल अपना पंजीकरण के फॉर्म का प्रिंट एवं अपना पहचान पत्र लाना होगा |',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 80.0,
                  height: 30.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SubDaaInfo()),
                      );
                    },
                    child: Text(
                      'जानकारी',
                    ),
                  ),
                ),
                SizedBox(
                  width: 85.0,
                  height: 30.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegMyApp()),
                      );
                    },
                    child: Text(
                      'पंजीकरण',
                    ),
                  ),
                ),
                SizedBox(
                  width: 80.0,
                  height: 30.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegMyApp()),
                      );
                    },
                    child: Text(
                      'लॉग इन',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: SizedBox(
                width: 180.0,
                height: 30.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserView()),
                    );
                  },
                  child: Text(
                    'आवेदन फॉर्म की स्थिति',
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
      ),
    );
  }
}
