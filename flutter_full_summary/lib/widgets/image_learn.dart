import 'package:flutter/material.dart';

class ImageLearns extends StatelessWidget {
  const ImageLearns({super.key});
  final String path = "assets/images/yazilim.jpg";
  final String _imageUrl = "https://picsum.photos/150/150";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resim İşlemleri"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    child: Image.asset(
                      path,
                      fit: BoxFit.cover,
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image.network(
                      _imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(_imageUrl),
                      radius: 50,
                    ),
                  ),
                )
              ],
            ),
            FadeInImage.assetNetwork(
              placeholder: "assets/images/loading.gif",
              image: _imageUrl,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

/**
 * Image : Resim widget'ıdır.
 * Image.asset() : Projenizdeki resimleri kullanmak için kullanılır.
 * Image.network() : İnternet üzerinden resimleri kullanmak için kullanılır.
 * Image.file() : Dosya sisteminden resimleri kullanmak için kullanılır.
 * Image.memory() : Hafızadan resimleri kullanmak için kullanılır.
 * Image kullanmak için pubspec.yaml dosyasına resimlerin bulunduğu klasörü tanımlamamız gerekiyor.
 * fit ile resimlerin nasıl görüneceğini belirleyebiliriz. BoxFit.cover ile resimlerin boyutunu ayarlayabiliriz.
 * 
 CircleAvatar : Resimlerin yuvarlak olmasını sağlar.


 */
