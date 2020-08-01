import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Center(
            child: Text('Roll The Dice'),
          ),
        ),
        body: DiceStructure(),
      ),
    ),
  );
}

class DiceStructure extends StatefulWidget {
  @override
  _DiceStructureState createState() => _DiceStructureState();
}

class _DiceStructureState extends State<DiceStructure> {
  int indexNumber1 = 2;
  int indexNumber2 = 4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(
                  () {
                    indexNumber1 = Random().nextInt(6) + 1;
                    indexNumber2 = Random().nextInt(6) + 1;
                    print('Left Button Pressed');
                  },
                );
              },
              child: Image.asset('images/dice$indexNumber1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(
                  () {
                    indexNumber2 = Random().nextInt(6) + 1;
                    indexNumber1 = Random().nextInt(6) + 1;
                    print('Right Button Pressed');
                  },
                );
              },
              child: Image.asset('images/dice$indexNumber2.png'),
            ),
          )
        ],
      ),
    );
  }
}
