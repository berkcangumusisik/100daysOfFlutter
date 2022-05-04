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
        body: Text(
          "Merhaba Dünya",
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
            fontWeight: FontWeight.bold,
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
 * pubspec.ymal => Harici kütüphane yüklemek için kullanılır.
 * Uygulamamız her zaman main() metoduyla çalışmaya başlar.
 * main içerisine runApp() ile uygulamamızın çalışacağı widget'ını yazıyoruz.
 * Text() widget'ı ile metinsel ifadeleri kullanıcıya göstermeyi sağlar.
 * Icon() Uygulamamıza icon eklemeyi sağlar.
 MATERIAL APP WIDGETLERİ
 * title: Uygulama adı yazılır.
 * theme: Uygulamanın temel rengi mavidir ama bu widget yardımıyla tema rengiyle oynamayı sağlıyor.
 * AppBar() ie bir başlık barının çalışmasını ve güncellemeleri sağlar.
 * body bloğu ile uygulamamızın gövdesini düzenlemeyi sağlar.
 * 
 * FloatingActionButton() ile uygulamamızın sağ alttaki butonunu oluşturur.
 TEXT WIDGETİ
 * style : Metnin tasarımsal düzenlemeleri yapılır.
 * style:TextStyle() ile metnin tasarımı yapılır.
 */