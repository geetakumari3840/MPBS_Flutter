import 'package:flutter/material.dart';

class AoOne extends StatelessWidget {
  const AoOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              height: 400.0,
              child: Text(
                  'To establish and run Schools, Colleges, Research Institutes, Universities, Boarding Houses and Hostels, Public Libraries and Reading Halls especially in rural and semi-urban localities.',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              height: 400.0,
              child: Text(
                  'विशेष रूप से ग्रामीण और अर्ध-शहरी इलाकों में स्कूल, कॉलेज, अनुसंधान संस्थान, विश्वविद्यालय, बोर्डिंग हाउस और हॉस्टल, पब्लिक लाइब्रेरी और रीडिंग हॉल स्थापित करने और चलाने के लिए।',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
