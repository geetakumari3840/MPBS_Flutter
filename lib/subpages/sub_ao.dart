import 'package:flutter/material.dart';

class SubAO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aim & Objective"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Container(child: Image.asset('assets/images/aoimg.jpg')),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\t To establish and run Schools, Colleges, Research Institutes, Universities, Boarding Houses and Hostels, Public Libraries and Reading Halls especially in rural and semi-urban localities.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\t ग्रामीण अंचल एवं अर्द्ध शहरी क्षेत्रों में स्कूल, कालेज, शोध संस्थान, विश्वविद्यालय, आवासीय अनुशिक्षण केंद्र एवं होस्टल, सार्वजानिक पुस्तकालय तथा अधय्यन कक्षों की स्थापना एवं सञ्चालन',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.red),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\t To institute fellowship, scholarship and free ships to the deserving students and confers awards and prizes to the persons of eminent social integrity.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\t योग्य छात्रों को फैलोशिप, छात्रवृत्ति और स्वतंत्रता प्रदान करने के लिए और प्रतिष्ठित सामाजिक अखंडता के व्यक्तियों को पुरस्कार और पुरस्कार प्रदान करते हैं।',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.green),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\t To print, publish, circulate and distribute books, journals, magazines, news papers ensuring educational advancement & social awareness of the marginalized sections.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\t आर्थिक रूप से विपन्न लोगों के शैक्षिक उत्थान एवं सामुदायिक जागरूकता हेतु पुस्तकों, पत्रिकाओं, समाचार पत्रों का मुद्रण, प्रकाशन, संचरण एवं वितरण',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.blue),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\t To promote rational, scientific and humanitarian thinking, attitude and temperament by promoting, practicing professing the great ideals of justice, equality, liberty, community and compassion by organizing lectures. workshops, seminars and conferences.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '\t व्याख्यान, कार्यशालाओं, सेमिनारों और सम्मेलनों का आयोजन करके न्याय, समानता, स्वतंत्रता, समुदाय और करुणा के महान आदर्शों का अभ्यास करने को बढ़ावा देने के द्वारा तर्कसंगत, वैज्ञानिक और मानवीय सोच, दृष्टिकोण और स्वभाव को बढ़ावा देने के लिए।',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              // Divider(
              //     height: 20,
              //     thickness: 5,
              //     indent: 20,
              //     endIndent: 20,
              //     color: Colors.red),
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
