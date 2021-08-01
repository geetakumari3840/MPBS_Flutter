import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class Quate extends StatelessWidget {
  const Quate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
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
                '- विचार -',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Container(
              color: Colors.white,
              height: 360.0,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Marquee(
                    text:
                        "मै उसी धर्म को मानता हु जो हमे स्वंत्रता, समानता और आपस में भाईचारा रखना सिखाता है| समाज में अनपढ़ लोग है ये हमारे समाज की समस्या नही है लेकिन जब समाज के पढ़े लिखे लोग भी गलत बातो का समर्थन करने लगते है और गलत को सही दिखाने के लिए अपने बुद्धि का उपयोग करते है यही हमारे समाज की समस्या है| जीवन लम्बा नही बल्कि बड़ा और महान होना चाहिए | हम सबसे पहले और अंत में भी भारतीय है| यदि मुझे लगेगा की सविंधान का दुरूपयोग हो रहा है तो सबसे पहले मै इस सविंधान को ही जलाऊंगा| कौन सा समाज कितना तरक्की कर चूका है इसको जानने के लिए उस समाज के महिलाओ की डिग्री देख ले| जो कौम अपना इतिहास तक नही जानती है वे कौम कभी अपना इतिहास भी नही बना सकती है| भाग्य में विश्वास रखने के बजाय अपने शक्ति और कर्म में विश्वास रखना चाहिए| एक इतिहास लिखने वाला इतिहासकार सटीक, निष्पक्ष और ईमानदार होना चाहिए| मानव के बुद्धि का विकास मानव के अस्तित्व का अंतिम लक्ष्य होना चाहिए| हिन्दू धर्म में कारण, विवेक और स्वतंत्र सोच के विकास के लिए कोई गुंजाइश नही है|",
                    style: TextStyle(
                        fontFamily: 'Open Sans',
                        color: Colors.grey[850],
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    scrollAxis: Axis.vertical,
                    blankSpace: 50,
                    velocity: 100,
                    pauseAfterRound: Duration(seconds: 2),
                    decelerationDuration: Duration(seconds: 2),
                    startPadding: 100),
              )),
          Container(
            height: 80.0,
            width: double.infinity,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'डॉ. भीमराव अंबेडकर',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
