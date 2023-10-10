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
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              child: const Text("Maybe Pop Kullanımı"),
            ),
            ElevatedButton(
              onPressed: () {
                if (Navigator.canPop(context)) {
                  print("Evet pop olabilir");
                } else {
                  print("Hayır pop olamaz");
                }
              },
              child: const Text("Maybe Pop Kullanımı"),
            ),
          ],
        )));
  }
}


/**
 * Navigasyon İşlemleri
 * Navigator.of(context).push() : Yeni bir sayfaya geçmek için kullanılır. Bu işlemi yaparken, geçiş yapacağımız sayfanın widget'ını parametre olarak veririz. Gidilen sayfadan geri dönmek için sol üstteki geri butonuna basılır.
 * Navigator.of(context).pop() : Gidilen sayfadan geri dönmek için kullanılır. Bu işlemi yaparken, geri döneceğimiz sayfanın widget'ını parametre olarak veririz.
 * WillPopScope() : Geri tuşuna basıldığında çalışan bir widget'tır. Bu widget'ı kullanarak, geri tuşuna basıldığında çalışacak kodları yazabiliriz.
 * Navigator.of(context).maybePop() : Eğer ana sayfadan başka bir sayfaya geçiş yapılmışsa, geri tuşuna basıldığında çalışır. Eğer ana sayfadan başka bir sayfaya geçiş yapılmamışsa, etkisi olmaz.
 * Navigator.canPop(context) : Eğer ana sayfadan başka bir sayfaya geçiş yapılmışsa, true değerini döndürür. Eğer ana sayfadan başka bir sayfaya geçiş yapılmamışsa, false değerini döndürür.
 * Navigator.of(context).pushReplacement() : Yeni bir sayfaya geçmek için kullanılır. Bu işlemi yaparken, geçiş yapacağımız sayfanın widget'ını parametre olarak veririz. Gidilen sayfadan geri dönmek için sol üstteki geri butonuna basılır. Bu işlemi yaptığımızda, gidilen sayfadan geri dönüşte, gidilen sayfaya değil, ana sayfaya dönülür.

 */