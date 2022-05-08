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
          height: 400,
          color: Colors.yellow,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.add_circle, size: 64, color: Colors.green),
              Icon(Icons.add_circle, size: 64, color: Colors.red),
              Icon(Icons.add_circle, size: 64, color: Colors.blue),
              Icon(Icons.add_circle, size: 64, color: Colors.orange),
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
}

/**
 Row Widgetinin Kullanımı
 * Row satır olarak bilinir.
 * Row widgetinin içinde yer alan widgetleri sırasıyla sıralanır.
 * children:<Widget>[] ile Row widgetinin içinde yer alan widgetleri belirlenir.
 * Yan yana dizilerler.
 MainAxisSize
 * MainAxisSize ile Row ve Column widgetinin genişliğini belirliyoruz.Eğer widget genişliğini belirtmezsek Max size olarak ayarlanır. 
 MainAxisAlignment
  * Row ve Column widgetinin Row içinde yatayda, column için dikeyde hizalama yapar.
  * mainAxisAlignment: MainAxisAlignment.center, ile ortalama hizalama yapılır.
  * mainAxisAligment:MainAxisAlignment.spaceEvenly, ile her iki widget arasında boşluk bırakılır.
CrossAxisAligment
 * Row ve Column widgetinin Row içinde dikeyde, column içinde yatayda hizalama yapar.
 * MainAxisAligment'ın tersi yönde çalışır.
 * crossAxisAlignment:CrossAxisAlignment.center, ile ortalama hizalama yapılır.
 * crossAxisAlignment:CrossAxisAlignment.stretch, ile widgetların genişliği ortalama genişliği ile eşitlenir.
 Column Widgetinin Kullanımı
  * Column widgetinin içinde yer alan widgetleri sırasıyla sıralanır.
  * children:<Widget>[] ile Column widgetinin içinde yer alan widgetleri belirlenir.
  * Alt alta diziler.
 */