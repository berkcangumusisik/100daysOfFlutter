import 'package:flutter/material.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Scaffold Learn")),
      ),
      body: const Text(
        "Merhaba",
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 50,
        ),
      ),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.keyboard_arrow_left), label: "Önceki"),
        BottomNavigationBarItem(
            icon: Icon(Icons.keyboard_arrow_right), label: "Sonraki"),
      ]),
    );
  }
}

/*
Scaffold : Scaffold widget'ı bize birçok widget'ı kullanma imkanı sunar.
Flutter’da Scaffold, uygulamanın temel yapı taşıdır. Scaffold, AppBar, Drawer, BottomNavigationBar gibi bileşenleri içerebilir ve uygulamanın içeriğini içeren bir alan sağlar. Scaffold sınıfı, Material Design tasarımı içerisinde bulunan bir yapı iskelesidir ve programın ana iskeletini oluşturur.



*/