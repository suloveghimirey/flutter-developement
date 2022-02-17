import 'package:flutter/material.dart';

import 'bg_image.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key? key,
    required this.myText,
    required TextEditingController nameContoller,
  })  : _nameContoller = nameContoller,
        super(key: key);

  final String myText;
  final TextEditingController _nameContoller;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      BgImage(),
      SizedBox(
        height: 20,
      ),
      Text(
        myText,
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: _nameContoller,
          keyboardType: TextInputType.text,
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter Something Here",
            labelText: "Name",
          ),
        ),
      ),
    ]);
  }
}
