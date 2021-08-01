import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CarPro extends StatelessWidget {
  const CarPro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
          height: 500.0,
          // width: 300.0,
          child: Carousel(
            images: [
              NetworkImage(
                  'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
              NetworkImage(
                  'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
              ExactAssetImage("assets/images/mpbsindia_logo.png")
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
            overlayShadow: true,
            overlayShadowColors: Colors.white,
            overlayShadowSize: 0.7,
          )),
    );
  }
}
