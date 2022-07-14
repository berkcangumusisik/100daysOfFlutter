import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
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