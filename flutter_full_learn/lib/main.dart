import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/text_learn_view.dart';
import 'package:flutter_full_learn/scaffold_learn_view.dart';

import '101/container_sized_box_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // Debug yazısını kaldırır.
      theme: ThemeData.dark(),
      home: ScaffoldLearn(),
    );
  }
}

/**
 * Flutter bir software development kitidir. Bir UI kitidir.
 * İçerisinde hazır çözümler, compenentler ve widgetlar bulunur.
 * Flutter 0.andan itibaren bize çözüm sunar.
 * Flutter bize  bir alet çantası bize sunmaktadır.
 * Flutter projeleri üstte bir ebeveynle başlar sonra çocuklar gelir.
 - Everything is widget. 
 * Flutter da her şey bir widgettir.
 * Bu yapı bize müşteri bir sayfada bir widget oluşturduktan sonra başka bir sayfada bir widget olarak kullanabiliriz.
 * Flutter'da widgetları bir puzzle parçası olarak düşünebiliriz.
 flutter doctor : Flutter'ın kullanımının doğrulanmasını sağlar.

 Flutter ile yeni bir proje oluşturmak için flutter create proje_ismi yazılarak oluşturulur.

 Neden Flutter?
 * Cross-platform uygulamaların oluşturulması için kullanılır.
 
 Flutter ile geliştirilen uygulamalarınızın Android ve iOS platformlarında da kullanılabilir.

 Flutter Klasör Yapısı
 * android, ios, windows ve web klasörleri sayesinde hangi platformda proje oluşturduğumuza göre ayarlamalar yapabiliriz.
 * lib klasöründe gerekli kodlar yazılır.
 * pubspec.yaml dosyasında proje için gerekli eklentiler veya bileşenleri belirtiriz. pub.dev üzerinden eklentileri indirmek için kullanılır.
 * proje main() fonksiyonu içerisinde çalıştırılır.
 * 
 ** Material App bizlere birçok widget'ı kullanma imkanı sunar. Projenin yaşam döngüsünü yönetir.
 */
