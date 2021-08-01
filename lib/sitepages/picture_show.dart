import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class PicShow extends StatelessWidget {
  const PicShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
          height: 250.0,
          // width: 300.0,
          child: Carousel(
            images: [
              // NetworkImage(
              // 'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
              // NetworkImage(
              //     'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
              ExactAssetImage('assets/ourwork/101.jpg'),
              ExactAssetImage("assets/ourwork/102.jpg"),
              ExactAssetImage("assets/ourwork/103.jpg"),
              ExactAssetImage("assets/ourwork/104.jpg"),
              ExactAssetImage("assets/ourwork/105.jpg"),
              ExactAssetImage("assets/ourwork/106.jpg"),
              ExactAssetImage("assets/ourwork/107.jpg"),
              // ExactAssetImage("assets/ourwork/108.jpg"),
              // ExactAssetImage("assets/ourwork/109.jpg"),
              // ExactAssetImage("assets/ourwork/110.jpg"),
              // ExactAssetImage("assets/ourwork/111.jpg"),
              // ExactAssetImage("assets/ourwork/112.jpg"),
              // ExactAssetImage("assets/ourwork/113.jpg"),
              // ExactAssetImage("assets/ourwork/114.jpg"),
              ExactAssetImage("assets/ourwork/115.jpg")
            ],
            boxFit: BoxFit.cover,
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 6.0,
            dotIncreasedColor: Color(0xFFFF335C),
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.topCenter,
            dotVerticalPadding: 10.0,
            showIndicator: true,
            indicatorBgPadding: 7.0,
            borderRadius: true,
            // overlayShadow: true,
            // overlayShadowColors: Colors.white,
            overlayShadowSize: 0.7,
          )),
    );
  }
}
