// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubDaaInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("डॉ. अम्बेडकर अकादमी, मसौता, गाजियाबाद"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
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
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'डॉ. अम्बेडकर अकादमी, मसौता, गाजियाबाद (उ.प्र.) आर्थिक रूप से कमजोर मेधावी छात्रों के लिए आई.ए.एस./पी.सी.एस., एस.एस.सी. की परीक्षाओँ हेतु निःशुल्क आवासीय स्वाध्याय/अनुशिक्षण (कोचिंग) केंद्र |\nDr. Ambedkar Academy, Masauta, Ghaziabad(UP) IAS/PCS, SSC free residential coaching cum self study centre for financially backward brilliant students.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'मिशन पे बैक टु सोसाइटी, गाजियाबाद द्वारा संचालित | \nRun By: Mission Pay Back to Society',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              // Divider(
              //     height: 20,
              //     thickness: 5,
              //     indent: 20,
              //     endIndent: 20,
              //     color: Colors.red),
              // SizedBox(
              //   height: 10.0,
              // ),
              Text(
                'नियम एवं शर्तें :-\n\n• किसी भी विषय में स्नातक और पारिवारिक वार्षिक आय अधिकतम 05 लाख रूपए तक, • 01 अगस्त 2021 को अधिकतम आयु सीमा - एस.एस.सी. अनुशिक्षण के लिए 26 वर्ष और सिविल सर्विसेज अनुशिक्षण के लिए 30 वर्ष, • किसी भी तरह की गंभीर बीमारी से ग्रस्त ना हो, • शिक्षा, जाति, आय प्रमाण-पत्र एवं आधार कार्ड की मूल एवं छाया-प्रति परीक्षा के दिन साथ लाएं, • गत वर्षों की किसी भी प्रतियोगितात्मक परीक्षा में उत्तीर्ण युवकों को आयु सीमा में छूट के प्रावधान के साथ स्वाध्याय/अनुशिक्षण (कोचिंग) हेतु प्राथमिकता दी जाएगी।\n\nTerms and conditions\n\n• Graduate in any discipline with family annual income upto a maximum of Rs 05 lakhs. • Maximum age limit as on 01.08.2021 - For SSC Coaching : 26 and for Civil Services coaching : 30 Years. • Must not be suffering from any fatal disease. • Please bring original and photo copies of the education, caste and Income certificates and Aadhaar Card on the day of examination. • Candidates qualified for any of the above competitive examinations in the yesteryears will be given preference for coaching/self study alongwith the provision for relaxation in age limit.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'नोट : चयनित उम्मीदवारों को मात्र भोजन का खर्च स्वयं वहन करना होगा और शेष सेवाओं/सुविधाओं का व्यय जिसमें उपयुक्त शैक्षणिक वातावरण के साथ आवास, विशेषज्ञों द्वारा शिक्षण, लाइब्रेरी, 24 घंटे बिजली-पानी की आपूर्ति एवं सुनियोजित मेस आदि अकादमी द्वारा वहन किया जाएगा|\n\nNote : The selected candidates will have to just bear the basic expense of their meals and all other costs of services/facilities including boarding with suitable academic climate, coaching by experts, library, 24 hr electricity and water supply and fully operational mess etc will be borne by the Academy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              // Divider(
              //     height: 20,
              //     thickness: 5,
              //     indent: 20,
              //     endIndent: 20,
              //     color: Colors.green),

              Text(
                'परीक्षा स्थल',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),

              Text(
                'डॉ. अम्बेडकर अकादमी मसौता लिंक रोड, जिंदल नगर, एन.एच.-09, गाजियाबाद (उ.प्र.)-201015 संपर्क: 9818825621, 9999659788, 9560186740',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              // Divider(
              //     height: 20,
              //     thickness: 5,
              //     indent: 20,
              //     endIndent: 20,
              //     color: Colors.green),

              Text(
                'Entrance Test Venue',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),

              Text(
                'Dr. Ambedkar Academy, Masauta Link Road, Jindal Nagar, NH-09, Ghaziabad (UP) -201015, Contact Nos.: 9818825621, 9999659788, 9560186740',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                ),
              ),

              SizedBox(
                height: 30.0,
              ),
              Text(
                'डॉ. अम्बेडकर अकादमी में अनुशिक्षण (कोचिंग) हेतु पंजीकरण का विकल्प सदैव के लिए खुला रहेगा | आपको अपना पंजीकरण केवल एक ईमेल से मात्र एक बार करना अनिवार्य है | प्रवेश परीक्षा में सम्लित होने के लिए, डॉ. अम्बेडकर अकादमी / मिशन पे बैक टु सोसाइटी, गाजियाबाद द्वारा वेबसाइट / ईमेल के माद्यम से आपको समय-समय पर सूचित किया जायेगा | परीक्षा स्थल पर आपको केवल अपना पंजीकरण के फॉर्म का प्रिंट एवं अपना पहचान पत्र लाना |\n\nThe option of registration for training (coaching) at Dr. Ambedkar Academy will always be open. You must register your registration only once with one email. To be included in the entrance examination, Dr. Ambedkar Academy / Mission Pay Back to Society, Ghaziabad will notify you from time to time through the website / email. At the examination venue, all you need to do is print your registration form and bring your identity card.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),

              SizedBox(
                height: 10.0,
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
