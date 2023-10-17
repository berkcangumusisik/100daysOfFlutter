import 'package:dynamic_notes_app/constants/app_constant.dart';
import 'package:flutter/material.dart';

class ShowAverage extends StatelessWidget {
  final double average;
  final int lessonCount;
  const ShowAverage(
      {super.key, required this.average, required this.lessonCount});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          lessonCount > 0 ? "$lessonCount Ders Girildi" : "Ders Seçiniz",
          style: Consts.lessonNumberStyle,
        ),
        Text(
          average >= 0 ? average.toStringAsFixed(2) : "0.0",
          style: Consts.averageStyle,
        ),
        Text(
          "Ortalama",
          style: Consts.lessonNumberStyle,
        ),
      ],
    );
  }
}
