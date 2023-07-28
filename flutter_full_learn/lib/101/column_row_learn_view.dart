import 'package:flutter/material.dart';

class ColumnRowLearnView extends StatelessWidget {
  const ColumnRowLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  child: Container(color: Colors.red),
                ),
                Expanded(
                  child: Container(color: Colors.yellow),
                ),
                Expanded(
                  child: Container(color: Colors.green),
                ),
                Expanded(
                  child: Container(color: Colors.pink),
                ),
              ],
            ),
          ),
          Spacer(flex: 2),
          Expanded(
            flex: 2,
            child: Container(color: Colors.green),
          ),
          Expanded(
            flex: 2,
            child: Container(color: Colors.blue),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Hello"),
                Text("Merhaba"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


/**
 Column
 - Column widget'ı dikey bir şekilde widget'ları alt alta ekler.
 
 Row
 - Row widget'ı yatay bir şekilde widget'ları yan yana ekler.

 Expanded
  - Expanded widget'ı widget'ın genişliğini ve yüksekliğini genişletir.
  - flex: Expanded widget'ının genişliğini ve yüksekliğini belirler. 
  - flex: 1 -> 1/8
  - flex: 2 -> 2/8
  - flex: 3 -> 3/8
  - flex: 4 -> 4/8
  - flex: 5 -> 5/8

  Spacer
  - Boşluk bırakır. Expanded widget'ı gibi çalışır.

  crossAxisAlignment -> widget'ların yatayda nasıl konumlanacağını belirler.
  mainAxisAlignment ->  widget'ların dikeyde nasıl konumlanacağını belirler.
  crossAxisAlignment ve mainAxisAlignment Column ve Row widget'larında kullanılır.

 */