import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Dice'),
        backgroundColor: Colors.red,
      ),
      body: const DicePage(),
    ),
  ));


class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
            onPressed: () {
              changeDiceFace();
            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          )),
          Expanded(
              child: FlatButton(
            onPressed: () {
              changeDiceFace();
            },
            child: Image.asset('images/dice$rightDiceNumber.png'),
          )),
        ],
      ),
    );
  }
}
