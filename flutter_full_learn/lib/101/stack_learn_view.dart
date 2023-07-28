import 'package:flutter/material.dart';

class StackLearnView extends StatelessWidget {
  const StackLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          // Container(
          //   color: Colors.red,
          //   height: 100,
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 50),
          //   child: Container(
          //     color: Colors.blue,
          //     height: 100,
          //   ),
          // ),

          //

          Positioned.fill(
              top: 20,
              child: Container(
                color: Colors.blue,
              )),
          Positioned(
              bottom: 0,
              height: 100,
              width: 100,
              child: Container(
                color: Colors.green,
              )),
        ],
      ),
    );
  }
}
/**
 * Stack
 * - Stack widget'ı projemizdeki widget'ları üst üste koymamızı sağlar.
 * - Son eklenen widget en üstte olur.
 * - Positioned widget'ı ile widget'ları istediğimiz konuma yerleştirebiliriz.
 * 
 */