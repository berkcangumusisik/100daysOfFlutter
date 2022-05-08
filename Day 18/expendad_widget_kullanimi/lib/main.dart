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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: flexibleContainer,
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

  List<Widget> get sorunluContainer {
    return [
      Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
    ];
  }

  List<Widget> get flexibleContainer {
    return [
      Flexible(
        child: Container(
          width: 100,
          height: 300,
          color: Colors.yellow,
        ),
      ),
      Flexible(
        child: Container(
          width: 100,
          height: 300,
          color: Colors.blue,
        ),
      ),
    ];
  }

  List<Widget> get expandedContainer {
    return [
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.orange,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.orange,
        ),
      ),
    ];
  }
}

/**
 * Expanded Widgeti ile Row içindeyse yataya , Column içindeyse dikeyde boş olan alanlara yayılır.Diğer alanları bozamaz.
 * flex değeri normal şartlarda 1'dir ve bu değer büyüdükçe diğerlerini küçülterek kendisi büyür.
 * Flexible en fazla verilen değer kadar büyüyor.
 * Dev tools ile kod yazmadan şeklimizin nasıl göründüpünü daha iyi şekilde belirleyebiliriz.
 */