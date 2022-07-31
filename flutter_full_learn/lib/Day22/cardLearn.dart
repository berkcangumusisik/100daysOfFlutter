import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Card'),
        ),
        body: Column(
          children: [
            Card(
              child: SizedBox(
                height: 100,
                child: Center(
                  child: Text('Card'),
                ),
              ),
            )
          ],
        ));
  }
}

/**
 Card Kullanımı
 - Card widget'ının içerisine bir widget ekleyebiliriz.
 
 */