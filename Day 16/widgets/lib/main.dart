import 'dart:ui';

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
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Hoş Geldiniz'),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            color: Colors.teal,
            constraints: BoxConstraints(
                minHeight: 100, minWidth: 100, maxHeight: 200, maxWidth: 200),
            margin: EdgeInsets.all(10),
            child: Container(
                alignment: Alignment.center,
                color: Colors.black45,
                width: 100,
                height: 100,
                child: Text("Berkcan", style: TextStyle(color: Colors.white))),
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
 * Tek eleman kullanılacaksa child eğer birden fazla eleman kullanılacaksa children kullanılır.
 * Container: Görsel nesneler için alan oluşturmak ve alanla nesneye özellikler vermek için kullanılır.
 * aligment:Aligment.center container içinde kullanılarak Text child'ında yazıyı ortalamayı sağlar.
 *  width ve height değerleri yoksa child kadar yer kaplar.
 * BoxConstraints(minHeight: 100, minWidth: 100, maxHeight: 200, maxWidth: 200) ile child widgetin sınırlarını çizmeyi sağlar.
 * margin: EdgeInsets.all(10) ile container'ın margin'ını 10 olarak ayarlar.
 * Center: Widgetlerin içinde bulunduğu alana göre yatay ve dikeyde merkezler.
 */