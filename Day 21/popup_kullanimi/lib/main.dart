import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Popup Kullanimi',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        textTheme: TextTheme(
          headline1:
              TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Popup Örnekleri"),
        ),
        body: PopupKullanimi(),
      ),
    );
  }
}

class PopupKullanimi extends StatefulWidget {
  PopupKullanimi({Key? key}) : super(key: key);

  @override
  State<PopupKullanimi> createState() => _PopupKullanimiState();
}

class _PopupKullanimiState extends State<PopupKullanimi> {
  @override
  String _secilenSeir = 'Ankara';
  List<String> iller = ['Ankara', 'İstanbul', 'İzmir', 'Kayseri', 'Antalya'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          print('secilen sehir : $sehir');
          setState(() {
            _secilenSeir = sehir;
          });
        },
        //child: Text(_secilenSeir),
        itemBuilder: (BuildContext context) {
          /* return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text('Ankara'),
              value: 'Ankara',
            ),
            PopupMenuItem(
              child: Text('Bursa'),
              value: 'Bursa',
            ),
            PopupMenuItem(
              child: Text('Van'),
              value: 'Van',
            ),
          ]; */

          return iller
              .map(
                (String il) => PopupMenuItem(
                  child: Text(il),
                  value: il,
                ),
              )
              .toList();
        },
      ),
    );
  }
}

/**
 * Pop Up Widgets
 * Basıldığında bir popup menü açan buton.


 */