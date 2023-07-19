import 'package:flutter/material.dart';

import '101/image_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
          centerTitle: true,
          elevation: 0,
        ),
      ),
      home: ImageLearnView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

/*
Flutter
- Bir SDK'dır. (Software Development Kit)
- Bize bir alet çantası sunar.
- Efektif ve hızlı bir şekilde mobil uygulama geliştirmemizi sağlar.
- Flutter sarmal bir yapıya sahiptir. Her zaman bir widget içerisinde başka bir widget bulunur.
- Everything is a widget. (Her şey bir widgettir.) 
- Yeni bir proje oluşturmak için flutter create <app_name> komutu kullanılır.
- pubspec.yaml dosyası projemizin paket yöneticisidir. (dependencies)
- android, ios, linux, macos, web, windows klasörleri projemizin platformlarıdır.
- lib klasörü projemizin kodlarının bulunduğu kısımdır.
 MaterialApp
- MaterialApp widget'ı projemizin ana widget'ıdır.
- Projemizin temelini oluşturur.
- title: Uygulamamızın başlığını belirler.
- theme: Uygulamamızın temasını belirler.
- home: Uygulamamızın ana sayfasını belirler.
- debugShowCheckedModeBanner: Debug modunda uygulamamızın sağ üst köşesindeki debug yazısını kaldırır.
- Projede 1 tane MaterialApp widget'ı olur.
*/