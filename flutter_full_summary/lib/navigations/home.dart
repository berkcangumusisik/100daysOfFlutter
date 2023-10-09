import 'package:flutter/material.dart';
import 'package:flutter_full_summary/navigations/red_page.dart';

class NavigatorLearn extends StatefulWidget {
  const NavigatorLearn({super.key});

  @override
  State<NavigatorLearn> createState() => _NavigatorLearnState();
}

class _NavigatorLearnState extends State<NavigatorLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        appBar: AppBar(
          title: const Text("Navigatör Öğreniyorum"),
        ),
        body: Center(
            child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => RedPage(),
                  ),
                );
              },
              child: const Text("Kırmızı Sayfaya Git"),
            ),
          ],
        )));
  }
}


/**
 * Navigasyon İşlemleri
 * Navigator.of(context).push() : Yeni bir sayfaya geçmek için kullanılır. Bu işlemi yaparken, geçiş yapacağımız sayfanın widget'ını parametre olarak veririz. Gidilen sayfadan geri dönmek için sol üstteki geri butonuna basılır.
 * Navigator.of(context).pop() : Gidilen sayfadan geri dönmek için kullanılır. Bu işlemi yaparken, geri döneceğimiz sayfanın widget'ını parametre olarak veririz.
 */