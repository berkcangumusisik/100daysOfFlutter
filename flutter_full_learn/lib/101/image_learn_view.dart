import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({Key? key}) : super(key: key);
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
          child: Image.asset(
            ImageItems().appleWithBook,
            fit: BoxFit.cover,
          ),
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
      "assets/png/apple-and-book-png-transparent-apple-and-book-images-274565.png";
  final String appleBookWithoutPath =
      "apple-and-book-png-transparent-apple-and-book-images-274565";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
      width: 200,
    );
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
/**
 * Image Widget
 * - Bir resmi ekrana basmak için kullanılır.
 * - assets klasörüne resim eklenir.
 * - pubspec.yaml dosyasında assets kısmına resimlerin yolu eklenir.
 * - Image.network() ile internetten resim çekilebilir.
 * - Image.asset() ile projemizin içerisindeki resimleri çekebiliriz. BoxFit ile resmin boyutunu ayarlayabiliriz.
 * - Image.file() ile cihazımızın içerisindeki resimleri çekebiliriz.
 * 
 */