// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/homepage.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App", //minimize title
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
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
