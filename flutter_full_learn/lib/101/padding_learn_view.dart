import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              color: Colors.white,
              height: 100,
              width: 200,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Container(
              color: Colors.white,
              height: 100,
              width: 200,
            ),
          ),
          Padding(
            padding: ProjectPadding.pagePaddingRightOnly +
                ProjectPadding.pagePaddingVertical,
            child: Text("Flutter"),
          )
        ],
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);

  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}
/**
 * Padding
 * - Padding widget'ı içerisine aldığı widget'ı içerisindeki boşlukları ayarlamamızı sağlar.
 * - EdgeInsets sınıfı içerisindeki fromLTRB, all, symmetric, only fonksiyonları ile boşlukları ayarlayabiliriz.
 * - EdgeInsets.all(10) tüm kenarlara 10 birim boşluk bırakır.
 * - EdgeInsets.fromLTRB(10, 20, 30, 40) soldan 10, yukarıdan 20, sağdan 30, aşağıdan 40 birim boşluk bırakır.
 * - EdgeInsets.symmetric(horizontal: 10, vertical: 20) yatayda 10, dikeyde 20 birim boşluk bırakır.
 * - EdgeInsets.only(left: 10, right: 20) sadece soldan 10, sağdan 20 birim boşluk bırakır.
 * - EdgeInsets.zero tüm kenarlara 0 birim boşluk bırakır.
 * - EdgeInsets.only(top: 10) sadece yukarıdan 10 birim boşluk bırakır.
 */