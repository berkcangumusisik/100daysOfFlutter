import 'package:flutter/material.dart';
import 'package:flutter_full_learn/Day%2018/textLearnView.dart';
import 'package:flutter_full_learn/Day%2019/scaffoldLearn.dart';

import 'Day 19/containerSizedBoxLearn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // title uygulamanın telefondaki app başlığıdır.
      theme: ThemeData.dark(),
      home: const ScaffoldLearnView(),
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
 */