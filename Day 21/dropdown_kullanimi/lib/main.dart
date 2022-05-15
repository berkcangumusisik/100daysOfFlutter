import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dropdown Kullanımı',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        textTheme: TextTheme(
          headline1:
              TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dropdown Kullanımı"),
        ),
        body: DropdownKullanimi(),
      ),
    );
  }
}

class DropdownKullanimi extends StatefulWidget {
  DropdownKullanimi({Key? key}) : super(key: key);

  @override
  State<DropdownKullanimi> createState() => _DropdownKullanimiState();
}

class _DropdownKullanimiState extends State<DropdownKullanimi> {
  String? _secilenSehir = null;
  List<String> _tumSehirler = [
    'Ankara',
    'Bursa',
    'Istanbul',
    'Izmir',
    'Adıyaman',
    'Van'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text('Şehir Seçiniz'),
        icon: Icon(Icons.arrow_downward),
        iconSize: 32,
        underline: Container(
          height: 4,
          color: Colors.purple,
        ),
        style: TextStyle(color: Colors.red),
        /*items: [
          DropdownMenuItem(
            child: Text('Ankara Sehri'),
            value: 'Ankara',
          ),
          DropdownMenuItem(
            child: Text('İzmir Sehri'),
            value: 'Izmir',
          ),
          DropdownMenuItem(
            child: Text('Bursa Sehri'),
            value: 'Bursa',
          ),
        ],*/
        items: _tumSehirler
            .map(
              (String oankiSehir) => DropdownMenuItem(
                child: Text(oankiSehir),
                value: oankiSehir,
              ),
            )
            .toList(),
        value: _secilenSehir,
        onChanged: (String? yeni) {
          setState(() {
            _secilenSehir = yeni;
          });
        },
      ),
    );
  }
}

/**
 * DropdownButton
 * DropdownButton ile kullanıcının listeden bir seçim yapmasını sağlayan bir widgetdir. 
 * 
 */