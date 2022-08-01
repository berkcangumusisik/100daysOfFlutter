import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);
  final String _imagePath =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Apple-book.svg/800px-Apple-book.svg.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          height: 100,
          width: 300,
          child: PngImage(name: ImageItems().appleBookWithoutPath),
        ),
        Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Apple-book.svg/800px-Apple-book.svg.png',
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.abc_outlined),
        )
      ]),
    );
  }
}

class ImageItems {
  final String appleWithBook =
      "assets/apple-and-book-png-transparent-apple-and-book-images-274565.png";
  final String appleBook = "assets/png/ic_apple_with_school.png";
  final String appleBookWithoutPath = "ic_apple_with_school";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
/**
 Image İşlemleri
 - Resimleri kullanmak için assets klasörü oluşturulur.
 - pubspec.yaml dosyasına asset eklenir.
 - Image.asset() fonksiyonu ile resimleri assets klasöründen alabiliriz
 - 
 - Boxfit.fill: Hem genişlik hem de yükseklik tam olarak oturacak şekilde görsel gerilir. Haliyle orjinal boyutları deforme olur.
 - BoxFit.cover: Boşluk dolana kadar resmin boyutunda küçültme veya büyültme olur. Orjinal boyutun üst/alt veya yanları kırpılır.
 - BoxFit.fitHeight: Yüksekliği tam olarak sığdırır. Genişliği kırpar veya gerektiğinde fazladan boşluk eklenir.
 - BoxFit.fitWidth: Genişliği tam olarak sığdırır. Yüksekliği kırpar veya gerektiğinde fazladan boşluk eklenir.
 - BoxFit.contain: Hem yükseklik hem de genişlik oturana kadar sığdırır. Haliyle hangisi küçükse o sığar. Üstte/altta veya yanlarda fazladan boşluk olabilir.
 - opacity: Resmin opaklığını ayarlar. 0-1 arasında değerler alabilir.
 - 0 olarak ayarlanırsa resim görünmez.
 - Image.network() fonksiyonu ile resimleri internetten alabiliriz.
 */