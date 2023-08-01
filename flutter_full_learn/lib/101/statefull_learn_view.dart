import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/counter_hello_button.dart';

import '../product/languages/languages_items.dart';

class StatefullLearnView extends StatefulWidget {
  const StatefullLearnView({super.key});

  @override
  State<StatefullLearnView> createState() => _StatefullLearnViewState();
}

class _StatefullLearnViewState extends State<StatefullLearnView> {
  int _countValue = 0;
  void _updateCounter(bool isIncrement) {
    setState() {
      if (isIncrement) {
        _countValue++;
      } else {
        _countValue--;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LanguageItems.welcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _countValue.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Placeholder(
            fallbackHeight: 200,
            fallbackWidth: 200,
          ),
          CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
/*
Statefull Widget
- Static olmayan sayfalar için kullanılır.
- Statefull widget'lar değişken değerlerini tutabilir.
- Ne zaman yaşama ihtiyaç varsa Statefull widget kullanılır.
- Sayfanın her zaman bir hayatı vardır.
- Yaşam bazen bir sayfadayken, bazen de bir widget'tadır.
- Statefull widget'lar 2 parçadan oluşur. (Statefull widget ve State)
- setState() metodu ile değişken değerlerini güncelleyebiliriz.
*/