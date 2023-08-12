import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/image_learn_view.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return ImageLearnView();
                },
                fullscreenDialog: true,
                settings: RouteSettings()));
          },
          child: Icon(Icons.navigation_rounded)),
    );
  }
}


/**
 Navigation
 - Navigasyon ile farklı sayfalar arasında geçiş yapabiliriz.
 . push()
 - Bir sayfadan diğer sayfaya geçiş yapar.
 - Geri dönüş var.
 - Navigator.of(context) ile kullanılır.
 - fullscreenDialog: true ile sayfa geçiş animasyonu değiştirilebilir.

  .pop
  
 */