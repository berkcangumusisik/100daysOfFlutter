import 'package:flutter/material.dart';
import 'package:flutter_full_learn/Day20/iconLearn.dart';
import 'package:flutter_full_learn/Day22/cardLearn.dart';

class PageViewLearn extends StatefulWidget {
  PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.6);
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page View Learn"),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(_currentPageIndex.toString()),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                  duration: _DurationUtility.durationLow,
                  curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: _DurationUtility.durationLow,
                  curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      body: PageView(
          padEnds: false,
          controller: _pageController,
          onPageChanged: _updatePageIndex,
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.green,
            ),
            IconLearnView(),
            CardLearn(),
          ]),
    );
  }
}

class _DurationUtility {
  static const Duration durationLow = Duration(seconds: 1);
}

/**
 * PageView'ı sayfa görünümü oluşturur.
 * Yana bir sayfa ekler.
 * controller : PageController(viewportFraction: 0.6) ile sayfa görünümünün genişliği ayarlanarak. Sayfaları ortadan başlayarak görüntüler. 
 * fadEnds : false ile sayfaları soldan başlar.
 * Controller'ın nextPage() ve previousPage() metodları sayfalarının bir sonraki ve önceki sayfaya gitmesini sağlar.
 * Curves.slowMiddle ile sayfaların gidilmesini yavaşlatır.
 * Duration(seconds: 1) ile geçişlerin süresi verilir.
 */