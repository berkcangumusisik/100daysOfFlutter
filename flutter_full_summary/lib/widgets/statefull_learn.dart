import 'package:flutter/material.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // setState() metodu, değişkenin değerini değiştirdiğimizde, bu değişikliğin ekrana yansımasını sağlar.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sayaç Uygulaması'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Butona basılma sayısı:',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                _counter.toString(),
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: 50),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _incrementCounter();
          },
          child: const Icon(Icons.add),
        ));
  }
}


/**
 * Statefull Widget'lar, kullanıcı arayüzünün herhangi bir parçasını oluşturmak için kullanılır.
 * Yani, kullanıcı arayüzünün herhangi bir parçası değiştiğinde, bu değişikliğin ekrana yansımasını sağlar.
 * Yaşam döngüsüne sahiptir.
 * Theme.of(context) : Uygulamanızın temasını almak için kullanılır.
 * 
 */