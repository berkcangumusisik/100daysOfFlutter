import 'package:flutter/material.dart';

class FlexibleLearn extends StatelessWidget {
  const FlexibleLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible Kullanımı"),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 2,
              child: Container(
                width: 75,
                height: 75,
                color: Colors.red,
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                width: 75,
                height: 75,
                color: Colors.green,
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                width: 75,
                height: 75,
                color: Colors.blue,
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                width: 75,
                height: 75,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/**
 * Flexible Widget
 * - Flexible widget'ı, Container widget'ının genişliğini ve yüksekliğini belirler.
 * - flex : Flexible widget'ının genişliğini ve yüksekliğini belirler.
 
 Expanded ve Flexible widget'ları arasındaki farklar:
  - Expanded widget'ı, Container widget'ının genişliğini ve yüksekliğini belirler.


 */