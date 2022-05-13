import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resim Çalışmaları',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        textTheme: TextTheme(
          headline1:
              TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Örnekleri"),
        ),
        body: ImageExamples(),
      ),
    );
  }
}

class ImageExamples extends StatelessWidget {
  const ImageExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.asset(
                    "assets/images/logo.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Image.network(
                    "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png",
                  ),
                ),
                Expanded(
                  child: CircleAvatar(
                    child: Text(
                      "B",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    radius: 90,
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.red,
                    backgroundImage: AssetImage("assets/images/logo.jpg"),
                  ),
                ),
              ],
            ),
          ),
          FadeInImage.assetNetwork(
              placeholder: "assets/images/loading.gif",
              image:
                  "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"),
          Expanded(
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}


/**
 IMAGE WIDGETS
 * Belirli kaynaktan alınan resimleri gösterir.
 * Lokal veya web resimleri göstermek için kullanılır.
 * Eğer lokalde çalışıyorsak pubspec.yaml dosyasında resimlerin yolunu assets içinde yolu belirtiriz.
 * Image.asset("") ile lokaldeki resimleri çağırırız.
 * Image.network("") ile web resimleri çağırırız.
 * CircleAvatar() => Instagram tarzı avatar oluşturmayı sağlar.
 * IntrinsicHeight() => Çoklu satır için height özelliğini otomatik olarak ayarlar. En yüksek resimin height özelliğini alır
 * FadeInImage.assetNetwork() => İnternetten resim çağırılırken placeholder resmi gösterir.
 */