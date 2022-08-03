import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CenterCircularRedProgress()],
      ),
      body: const Center(
        child: LinearProgressIndicator(),
      ),
    );
  }
}

class CenterCircularRedProgress extends StatelessWidget {
  const CenterCircularRedProgress({
    Key? key,
  }) : super(key: key);
  final redColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      color: redColor,
      strokeWidth: 10,
      value: 0.9,
      backgroundColor: Colors.white,
    ));
  }
}

/**
 * CircularProgressIndicator : Dairesel bir progress bardır.
 * value : progress'in yüzdesi.
 * strokeWidth : progress'in çizgi kalınlığı.
 * LinearProgressIndicator : Doğrusal bir progress bardır.
 */