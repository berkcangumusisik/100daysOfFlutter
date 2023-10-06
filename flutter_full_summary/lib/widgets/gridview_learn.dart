import 'package:flutter/material.dart';

class GridViewLearn extends StatelessWidget {
  const GridViewLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Kullanımı'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        primary: false,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,
        children: const [
          ContainerWidget(),
          ContainerWidget(),
          ContainerWidget(),
          ContainerWidget(),
          ContainerWidget(),
          ContainerWidget(),
          ContainerWidget(),
          ContainerWidget(),
          ContainerWidget(),
          ContainerWidget(),
          ContainerWidget(),
          ContainerWidget(),
          ContainerWidget(),
        ],
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade100,
      width: 300,
      height: 300,
      child: const Center(
        child: Text("Flutter"),
      ),
    );
  }
}


/**
 * GridView : GridView, elemanlarını satır ve sütunlar halinde düzenleyen bir widget'tır.
 * GridView.count() : GridView'ın eleman sayısını belirler.
 * crossAxisCount : GridView'da kaç eleman olacağını belirler.
 * scrollDirection : GridView'ın yatay mı dikey mi olacağını belirler.
 * padding : GridView'ın içerisindeki elemanların arasındaki boşluğu belirler.
 * crossAxisSpacing : GridView'daki elemanların yatay boşluğunu belirler.
 * mainAxisSpacing : GridView'daki elemanların dikey boşluğunu belirler.
 * primary : GridView'ın ilk elemanına odaklanıp odaklanmayacağını belirler.
 */
