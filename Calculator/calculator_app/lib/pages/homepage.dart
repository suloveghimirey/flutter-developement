import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
        shadowColor: Colors.indigo,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Output : ",
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold),
              ),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter number one",
                ),
              ),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter number two",
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                      child: const Text("+"),
                      color: Colors.lightBlueAccent,
                      onPressed: () {}),
                  const Padding(padding: EdgeInsets.only(right: 10)),
                  MaterialButton(
                    child: const Text("-"),
                    onPressed: () {},
                    color: Colors.lightBlueAccent,
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    child: const Text("*"),
                    onPressed: () {},
                    color: Colors.lightBlueAccent,
                  ),
                  const Padding(padding: EdgeInsets.only(right: 10)),
                  MaterialButton(
                    child: const Text("/"),
                    onPressed: () {},
                    color: Colors.lightBlueAccent,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
