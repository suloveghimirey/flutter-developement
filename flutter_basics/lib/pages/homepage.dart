// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_basics/pages/login_page.dart';
import 'package:http/http.dart' as http;
import '../drawer.dart';
import 'dart:convert';

import '../utils/constants.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/home";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameContoller = TextEditingController();

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  String myText = "Change Me";

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index]["title"]),
                    subtitle: Text("ID : ${data[index]["id"]}"),
                    leading: Image.network(data[index]["url"]),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: Mydrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameContoller.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
