// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class CarouselDemo extends StatefulWidget {
//   CarouselDemo() : super();

//   final String title = "Carousel Demo";

//   @override
//   CarouselDemoState createState() => CarouselDemoState();
// }

// class CarouselDemoState extends State<CarouselDemo> {
//   //
//   late CarouselSlider _carouselSlider;

//   // ignore: unnecessary_getters_setters
//   CarouselSlider get carouselSlider => _carouselSlider;

//   // ignore: unnecessary_getters_setters
//   set carouselSlider(CarouselSlider carouselSlider) {
//     _carouselSlider = carouselSlider;
//   }

//   int _current = 0;
//   List imgList = [
//     'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
//     'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
//     // Image.asset('assets/images/mpbsindia_logo.png'),
//     'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//     'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//     'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
//     'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
//   ];

//   List<T> map<T>(List list, Function handler) {
//     List<T> result = [];
//     for (var i = 0; i < list.length; i++) {
//       result.add(handler(i, list[i]));
//     }
//     return result;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           carouselSlider = CarouselSlider(
//             height: 450.0,
//             initialPage: 0,
//             enlargeCenterPage: true,
//             autoPlay: true,
//             reverse: false,
//             enableInfiniteScroll: true,
//             autoPlayInterval: Duration(seconds: 2),
//             autoPlayAnimationDuration: Duration(milliseconds: 2000),
//             pauseAutoPlayOnTouch: Duration(seconds: 10),
//             scrollDirection: Axis.horizontal,
//             onPageChanged: (index) {
//               setState(() {
//                 _current = index;
//               });
//             },
//             items: imgList.map((imgUrl) {
//               return Builder(
//                 builder: (BuildContext context) {
//                   return Container(
//                     width: MediaQuery.of(context).size.width,
//                     margin: EdgeInsets.symmetric(horizontal: 10.0),
//                     decoration: BoxDecoration(
//                       color: Colors.green,
//                     ),
//                     child: Image.network(
//                       imgUrl,
//                       fit: BoxFit.fill,
//                     ),
//                   );
//                 },
//               );
//             }).toList(),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: map<Widget>(imgList, (index, url) {
//               return Container(
//                 width: 10.0,
//                 height: 10.0,
//                 margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: _current == index ? Colors.redAccent : Colors.green,
//                 ),
//               );
//             }),
//           ),
//           SizedBox(
//             height: 20.0,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               OutlinedButton(
//                 onPressed: goToNext,
//                 child: Text(">"),
//               ),
//               OutlinedButton(
//                 onPressed: goToPrevious,
//                 child: Text("<"),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   goToPrevious() {
//     carouselSlider.previousPage(
//         duration: Duration(milliseconds: 300), curve: Curves.ease);
//   }

//   goToNext() {
//     carouselSlider.nextPage(
//         duration: Duration(milliseconds: 300), curve: Curves.decelerate);
//   }
// }
