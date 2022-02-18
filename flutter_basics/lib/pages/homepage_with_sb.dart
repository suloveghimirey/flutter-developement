// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/login_page.dart';
import 'package:http/http.dart' as http;
import '../drawer.dart';
import 'dart:convert';

import '../utils/constants.dart';

class HomePageSB extends StatelessWidget {
  Future getData() async {
    var url = "https://jsonplaceholder.typicode.com/photos";
    var res = await http.get(Uri.parse(url));
    var data = jsonDecode(res.body);
    return data;
  }

  Stream<List<String>> getStream() {
    var data = Stream<List<String>>.fromIterable(
        [List<String>.generate(20, (index) => "Item $index")]);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
        actions: [
          IconButton(
              onPressed: () {
                Constants.prefs.setBool("loggedIn", false);
                Navigator.pushReplacementNamed(context, LoginPage.routeName);
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: StreamBuilder(
        stream: getStream(),
        builder: (context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Center(
                child: Text("Fetch Something"),
              );

            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasError) {
                return Center(
                  child: Text("Some error has occured!"),
                );
              }

              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data[index]),
                  );
                },
                itemCount: snapshot.data.length,
              );
          }
        },
      ),
      drawer: Mydrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
      ),
    );
  }
}
