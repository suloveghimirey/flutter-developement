// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/homepage.dart';
import 'package:flutter_basics/pages/login_page.dart';
import 'package:flutter_basics/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
  /*
    We have three options
      a. material.dart 
          mainlt for Android design
      b. widigt app
          lower level
          own design
      c. cupertino.dart
          mainlt for IOS design
    We need to create runapp always
    The runapp takes a widgit. Everything is an widgit in flutter.

    Container is like a box.
      Container has many propertiers like color,
      material .dart gives us access to colors
  */
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Awesome App",
      debugShowCheckedModeBanner: false, //minimize title
      home: Constants.prefs.getBool("loggedIn") == true
          ? HomePage()
          : LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}
