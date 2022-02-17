import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App", //minimize title
    home: HomePage(),
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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(2.0, 5.0),
                )
              ],
              color: Colors.teal,
              gradient: LinearGradient(colors: [Colors.yellow, Colors.pink])),
          child: Text(
            "I am a box.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
