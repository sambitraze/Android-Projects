import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                print('left button is pressed');
                setState(() {
                  ldn = Random().nextInt(6) + 1 ;
                  rdn = Random().nextInt(6) + 1 ;
                  print('ldn = $ldn');
                  print('rdn = $rdn');
                });
              },
              child: Image.asset('images/dice$ldn.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                print('Right button is pressed');
                setState(() {
                  ldn = Random().nextInt(6) + 1 ;
                  rdn = Random().nextInt(6) + 1 ;
                  print('rdn = $rdn');
                  print('ldn = $ldn');
                });
              },
              child: Image.asset('images/dice$rdn.png'),
            ),
          ),
        ],
      ),
    );
  }
}
