import 'package:flutter/material.dart';

class PopupLearnView extends StatefulWidget {
  const PopupLearnView({Key? key}) : super(key: key);

  @override
  State<PopupLearnView> createState() => _PopupLearnViewState();
}

class _PopupLearnViewState extends State<PopupLearnView> {
  List<String> renkler = [
    "Kırmızı",
    "Yeşil",
    "Mavi",
    "Sarı",
    "Mor",
    "Turuncu",
    "Pembe",
    "Beyaz",
    "Siyah",
    "Gri",
    "Lacivert",
    "Bordo",
    "Kahverengi",
    "Bordo",
    "Lacivert",
    "Gri",
    "Siyah",
    "Beyaz",
    "Pembe",
    "Turuncu",
    "Mor",
    "Sarı",
    "Mavi",
    "Yeşil",
    "Kırmızı"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popup Kullanımı'),
      ),
      body: Column(
        children: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: const Text('Ankara'),
                  value: 'Ankara',
                ),
                PopupMenuItem(
                  child: const Text("İstanbul"),
                  value: "İstanbul",
                ),
                PopupMenuItem(
                  child: const Text('İzmir'),
                  value: 'İzmir',
                ),
              ];
            },
            onSelected: (value) {
              print('Seçilen değer: $value');
            },
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return renkler
                  .map((e) => PopupMenuItem(
                        child: Text(e),
                        value: e,
                      ))
                  .toList();
            },
            onSelected: (value) {
              print('Seçilen değer: $value');
            },
          ),
        ],
      ),
    );
  }
}

/**
  * PopupMenuButton => Menü açar.
  * itemBuilder => Menüde gösterilecek elemanları oluşturur.
  * onSelected => Menüden seçilen değeri alır.
  * PopupMenuItem => Menüde gösterilecek elemanı oluşturur.
  
 */