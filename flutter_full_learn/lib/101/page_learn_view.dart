import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/icon_learn_view.dart';
import 'package:flutter_full_learn/101/image_learn_view.dart';
import 'package:flutter_full_learn/101/stack_learn_view.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(
    viewportFraction: 0.9,
  );
  int _currentPageIndex = 0;
  void updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(_currentPageIndex.toString()),
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(
                  duration: _DurationUtility._durationLow,
                  curve: Curves.slowMiddle);
            },
            child: Icon(Icons.arrow_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: _DurationUtility._durationLow,
                  curve: Curves.easeIn);
            },
            child: Icon(Icons.arrow_right),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        padEnds: false,
        controller: _pageController,
        onPageChanged: updatePageIndex,
        children: [
          ImageLearnView(),
          IconLearnView(),
          StackLearnView(),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
/**
 PageView
 - PageView widget'ı sayfalarımızı yatay olarak kaydırmamızı sağlar.
  - children: PageView widget'ının içerisine sayfalarımızı ekler.
  - controller: PageView widget'ının içerisindeki sayfaları kontrol etmemizi sağlar.
  - viewportFraction: PageView widget'ının içerisindeki sayfaların genişliğini belirler.
  - pageController.nextPage(): PageView widget'ının içerisindeki sayfaları bir sonraki sayfaya geçmemizi sağlar.
  - pageController.previousPage(): PageView widget'ının içerisindeki sayfaları bir önceki sayfaya geçmemizi sağlar. duration ve curve parametreleri alır. duration parametresi sayfa geçişinin hızını belirler. curve parametresi sayfa geçişinin eğrisini belirler.

*/