import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({super.key});
  int? _randomNumber;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        _randomNumber = Random().nextInt(100);

        Navigator.pop(context, _randomNumber);
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Red Page"),
        ),
        backgroundColor: Colors.red,
        body: Center(
          child: Column(
            children: [
              const Text(
                "Red Page",
                style: TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                onPressed: () {
                  _randomNumber = Random().nextInt(100);
                  print(_randomNumber);
                  Navigator.of(context).pop(_randomNumber);
                },
                child: const Text("Geri Dön"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("greenPage");
                },
                child: const Text("Green Page'e Git"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("yellowPage");
                },
                child: const Text("Yellow Page'e Git"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
