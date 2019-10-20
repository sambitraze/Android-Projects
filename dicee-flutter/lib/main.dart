import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldn = 1; //lEFT-DICE-NUMBER
  int rdn = 1; //RIGHT-DICE-NUMBER
  void cdf (){
    setState(() {
      ldn = Random().nextInt(6) + 1 ;
      rdn = Random().nextInt(6) + 1 ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                cdf();
            },
              child: Image.asset('images/dice$ldn.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                cdf();
                },
              child: Image.asset('images/dice$rdn.png'),
            ),
          ),
        ],
      ),
    );
  }
}
