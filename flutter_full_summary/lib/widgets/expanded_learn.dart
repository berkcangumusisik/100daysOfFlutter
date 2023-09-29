import 'package:flutter/material.dart';

class ExpandedLearn extends StatelessWidget {
  const ExpandedLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Kullanımı"),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: 75,
                height: 75,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 75,
                height: 75,
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 75,
                height: 75,
                color: Colors.blue,
              ),
            ),
            Expanded(
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
 * Expanded Widget
 * - Expanded widget'ı, Container widget'ının genişliğini ve yüksekliğini belirler.
 * - flex : Expanded widget'ının genişliğini ve yüksekliğini belirler.
 
 */