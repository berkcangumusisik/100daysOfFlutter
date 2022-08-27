import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/Day18/textLearnView.dart';
import 'package:flutter_full_learn/Day19/containerSizedBoxLearn.dart';
import 'package:flutter_full_learn/Day19/scaffoldLearn.dart';
import 'package:flutter_full_learn/Day20/appBarLearn.dart';
import 'package:flutter_full_learn/Day20/buttonsLearn.dart';
import 'package:flutter_full_learn/Day20/colorLearn.dart';
import 'package:flutter_full_learn/Day20/iconLearn.dart';
import 'package:flutter_full_learn/Day22/cardLearn.dart';
import 'package:flutter_full_learn/Day21/paddingLearn.dart';
import 'package:flutter_full_learn/Day21/statleessLearn.dart';
import 'package:flutter_full_learn/Day22/imageLearn.dart';
import 'package:flutter_full_learn/Day23/notDemosView.dart';
import 'package:flutter_full_learn/Day24/customComponentLearn.dart';
import 'package:flutter_full_learn/Day24/indicatorLearn.dart';
import 'package:flutter_full_learn/Day24/listTileLearn.dart';
import 'package:flutter_full_learn/Day25/columnRowLearn.dart';
import 'package:flutter_full_learn/Day25/stackDemoView.dart';
import 'package:flutter_full_learn/Day25/stackLayout.dart';
import 'package:flutter_full_learn/Day26/stateFullLearn.dart';
import 'package:flutter_full_learn/Day27/pageViewLearn.dart';
import 'package:flutter_full_learn/Day27/stateFullLifeCycleLearn.dart';
import 'package:flutter_full_learn/Day28/textFieldLearn.dart';
import 'package:flutter_full_learn/Day29/colorDemosView.dart';
import 'package:flutter_full_learn/Day30/listViewBuilder.dart';
import 'package:flutter_full_learn/Day30/listViewLearn.dart';
import 'package:flutter_full_learn/Day31/myCollectionsDemos.dart';
import 'package:flutter_full_learn/Day32/navigationLearn.dart';
import 'package:flutter_full_learn/Day33/tabLearn.dart';
import 'package:flutter_full_learn/Day34/modelLearnView.dart';
import 'package:flutter_full_learn/Day36/service/serviceLearnView.dart';
import 'package:flutter_full_learn/Day38/packageLearnView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // title uygulamanın telefondaki app başlığıdır.
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          centerTitle: true, // title'ın ortasında yer almasını sağlar.
          backgroundColor: Colors
              .transparent, // AppBar'ın arkaplan rengini transparan yapar.
          systemOverlayStyle: SystemUiOverlayStyle
              .light, // AppBar'ın arkaplan rengini karanlık yapar.

          elevation: 0, // AppBar'ın yüksekliğini 0 yapar.
        ),
      ),
      home: PackagLearnView(),
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