import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/counterHelloButton.dart';
import 'package:flutter_full_learn/product/languages/languageItems.dart';

class StatefullLearn extends StatefulWidget {
  //Bu aynı stateless gibi çalışır. Dışarıdan veri alır. Dışaıryla haberleşilen kısım
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;
  int _counterCustom = 0;
  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }

    setState(() {});
  }

  // Logicleri yazdığımız kısım
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(_countValue.toString(),
                  style: Theme.of(context).textTheme.headline2)),
          const Placeholder(
            fallbackHeight: 100,
          ),
          CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    print("Ekrana bastı");
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: Icon(Icons.add),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
/**
 Statefull Widget
 -  Duruma göre widgetin görünümünü değiştirmek için kullanılır.
 - Statefull widget’ın durumunu değiştirmek için setState() metodunu kullanır. setState() kullanıldığında widgetin görünümü değişir. yoksa widgetin görünümü hot reload yapmadan değişmez.

 */