import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Counter App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Butona Basılma Miktarı',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                _sayac.toString(),
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint(
                "Buton tıklandı ve sayaç değerimiz ${(_sayac + 1)} oldu.");
            sayaciArttir();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void sayaciArttir() {
    setState(() {
      _sayac++;
    });
  }
}
/**
 * State => uygulamanın o anki durumunu verir. Ara yüzde değişiklik yapacak değişken oluşturacaksanız kullanılır
 * setState => uygulamayı günceller.
 * setState() metoda State özelliği katar.
 * setState() koddaki değişikliği gösterir.
 * setState() çalışması için StatefulWidget kullanılması gerekir.
 * stful yazarak Stateful Widget oluşur.
 BuildContext:
 * Widget' a ait elementtir. 
 * Ağaç yapısındaki üst ve alt widget'lardan bilgi getirecek olan yapılar bu element'i kullanır. 
 * Her widget oluşturduğumuzda bu context bize gelir ve gerekli bilgileri alabiliriz.
 *  İhtiyacımız olan verilere BuildContext nesnesine erişerek ulaşabiliriz.
 */