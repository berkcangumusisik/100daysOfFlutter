import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _img1 = "https://docs.flutter.dev/assets/images/dash/Dashatars.png";
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
            width: 200,
            height: 200,
            padding: EdgeInsets.all(20),
            // child: FlutterLogo(
            //     style: FlutterLogoStyle.stacked,
            //     size: 100,
            //     textColor: Colors.blue),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 30, 10, 4),
                shape: BoxShape.rectangle,
                border: Border.all(width: 4, color: Colors.white),
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                    image: NetworkImage(_img1), fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                      color: Colors.white38,
                      blurRadius: 20.0,
                      offset: Offset(5.0, 5.0))
                ]),
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
 * row - sütun
 * column - satır
 * stack - üst üste binmiş yapılardır.
 * BoxDecoration - Container içindeki görsel nesnelerinin özelliklerini ayarlar.
 * child:FlutterLogo - Container içine Flutter logosunu ekler.
 * FlutterLogo içerisine style: FlutterLogoStyle.horizontal eklenirse logonun yanına Flutter yazısı gelir.
 BOXDECORATION PARAMETRELERİ
 * color: renk atamayı sağlar.
 * shape: şekil atamayı sağlar. BoxShape.circle veya BoxShape.rectangle şekilleri kullanılabilir. BoxShape.circle ile şekil yuvarlak hale gelir.
 * border: border atamayı sağlar.
 * borderRadius: ovalleştirme işlemi sağlar. BoxShape.circle ile çalışmaz. BorderRadius.circular(20.0) ile 20.0 değeri ile ovalleştirme işlemi yapılır.
 * İnternetten resim getirme işlemi için NetworkImage kullanılır.
 * boxShadow - çizgi gölgeleri sağlar.
 */