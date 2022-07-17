import 'package:flutter/material.dart';
import 'package:i_am_poor/extensions.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text('I am Poor!')),
        backgroundColor: '#4a148c'.toColor(),
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/poor.png'),
        ),
      ),
      backgroundColor: '#e1bee7'.toColor(),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
