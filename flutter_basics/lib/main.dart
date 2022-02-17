import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            color: Colors.black,
            width: 200,
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  /*
                    .start
                    .end
                    .centre
                    .sapceBetween
                    .spaceAround
                    .spaceEvenly
                  */
                  crossAxisAlignment: CrossAxisAlignment.center,
                  /*
                    Purai sapce na liyeako bhayera cente ma aayena
        
                  */
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
