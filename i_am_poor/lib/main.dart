import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.black,
    appBar: AppBar(
      title: Center(
        child: Text('I am poor'),
      ),
      backgroundColor: Colors.red,
    ),
    body: Center(
      child: Image(
        image: AssetImage('images/coal.jpg'),
      ),
    ),
  )));
}
