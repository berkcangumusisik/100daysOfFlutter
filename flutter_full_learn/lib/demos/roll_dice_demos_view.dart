import 'dart:math';

import 'package:flutter/material.dart';

class RollDiceDemos extends StatefulWidget {
  const RollDiceDemos({super.key});

  @override
  State<RollDiceDemos> createState() => _RollDiceDemosState();
}

class _RollDiceDemosState extends State<RollDiceDemos> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: Text('Zar Atma Oyunu'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              "assets/png/dice-$currentDiceRoll.png",
              width: 200,
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: rollDice,
                child: Text('Zar At'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 20),
                ))
          ]),
        ));
  }
}
