import 'package:flutter/material.dart';

class ShowAverage extends StatelessWidget {
  final double average;
  final int lessonCount;
  const ShowAverage(
      {super.key, required this.average, required this.lessonCount});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Text("Ders Sayısı"), Text("2.85"), Text("Ortalama")],
    );
  }
}
