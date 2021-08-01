// @dart=2.9
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mpbsindia/test_page.dart/codepen_nav.dart';
import 'package:mpbsindia/test_page.dart/login_page.dart';
import 'package:mpbsindia/test_page.dart/test1.dart';
import 'mainpages/home_page.dart';
import 'mainpages/responsive_page.dart';
import 'utiles/routes.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        textTheme: GoogleFonts.kalamTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/test": (context) => TestPage(),
        "/codepennav": (context) => CodePenNav(),
        "/resp": (context) => ResPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
