import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Hoş Geldiniz'),
        ),
        body: Container(
          color: Colors.yellow,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dartRowunuOlustur(),
              Expanded(
                child: dersleriColumunuOlustur(),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Tıklandı");
          },
          child: Icon(Icons.account_circle_rounded),
        ),
      ),
    );
  }

  Container containerOlustur(String harf, Color renk, {double margin = 0}) {
    return Container(
      width: 75,
      height: 75,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: margin),
      color: renk,
      child: Text(
        harf,
        style: TextStyle(
          fontSize: 48,
        ),
      ),
    );
  }

  dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur("D", Colors.orange.shade200),
        containerOlustur("A", Colors.orange.shade400),
        containerOlustur("R", Colors.orange.shade600),
        containerOlustur("T", Colors.orange.shade800),
      ],
    );
  }

  dersleriColumunuOlustur() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: containerOlustur("E", Colors.orange.shade300, margin: 15),
        ),
        Expanded(
          child: containerOlustur("R", Colors.orange.shade400, margin: 15),
        ),
        Expanded(
          child: containerOlustur("S", Colors.orange.shade400, margin: 15),
        ),
        Expanded(
          child: containerOlustur("L", Colors.orange.shade400, margin: 15),
        ),
        Expanded(
          child: containerOlustur("E", Colors.orange.shade500, margin: 15),
        ),
        Expanded(
          child: containerOlustur("R", Colors.orange.shade600, margin: 15),
        ),
        Expanded(
          child: containerOlustur("İ", Colors.orange.shade700, margin: 15),
        ),
      ],
    );
  }
}
