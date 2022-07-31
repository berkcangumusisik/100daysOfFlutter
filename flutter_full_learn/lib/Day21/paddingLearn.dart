import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding'),
      ),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(color: Colors.white, height: 100)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(
                  padding: EdgeInsets.zero, color: Colors.white, height: 100),
            ),
            Padding(
              padding: ProjectPadding.pagePaddingRightOnly +
                  ProjectPadding.pagePaddingVertical,
              child: const Text('Berkcan'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);

  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}


/**
 Padding
  * İki component arasında boşluk bırakmayı sağlar.
  * padding: EdgeInsets.symmetric(vertical: 10); // yatayda 10, dikeydeki 10 boşluk bırakır.
  * padding: EdgeInsets.only(right: 20); // sağda 20 boşluk bırakır.
  * padding: EdgeInsets.zero; //Her yönde 0 boşluk bırakır.
  * padding: EdgeInsets.all(20); //Her yönde 20 boşluk bırakır.


 */