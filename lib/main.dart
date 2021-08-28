// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mpbsindia/apidemo/mainapidemo.dart';
import 'package:mpbsindia/codeigniter_login/login.dart';
import 'package:mpbsindia/codeigniter_login/screens/home.dart';
import 'package:mpbsindia/codeigniter_login/screens/signin.dart';
import 'package:mpbsindia/codeigniter_login/screens/signup.dart';
import 'package:mpbsindia/login_mpbs/send_data.dart';
import 'package:mpbsindia/mainpages/myphpsql.dart';
import 'package:mpbsindia/mainpages/registe_user.dart';
import 'package:mpbsindia/mainpages/view_registratin.dart';
import 'package:mpbsindia/test_page/codepen_nav.dart';
import 'package:mpbsindia/test_page/fatch_data_internet.dart';
//import 'package:mpbsindia/test_page/login_page.dart';
import 'package:mpbsindia/test_page/test1.dart';
import 'mainpages/home_page.dart';
import 'mainpages/responsive_page.dart';
//import 'utiles/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getPref();
  // }

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
      initialRoute: "/sendmyapp",
      routes: {
        "/": (context) => HomePage(),
        "/test": (context) => TestPage(),
        "/codepennav": (context) => CodePenNav(),
        "/resp": (context) => ResPage(),
        "/apisql": (context) => Mainapi(),
        "/apisqll": (context) => RegMyApp(),
        "/login": (context) => MyAppc(),
        "/apisqlview": (context) => ViewMyApp(),
        "/fatchmyapp": (context) => FatchMyApp(),
        "/sendmyapp": (context) => SendMyApp(),
        "/sqlphp": (context) => MyAppSql(),
        '/signin': (BuildContext context) => new SignIn(),
        '/signup': (BuildContext context) => new SignUp(),
        '/home': (BuildContext context) => new Home(),
        // MyRoutes.homeRoute: (context) => HomePage(),
        // MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
