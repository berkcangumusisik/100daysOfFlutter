import 'package:flutter/material.dart';

class DataHelper {
  static List<String> _letterNotes() {
    return ['AA', 'BA', 'BB', 'CB', 'CC', 'DC', 'DD', 'FD', 'FF'];
  }

  static double _numberNotes(String letter) {
    switch (letter) {
      case "AA":
        return 4;
      case "BA":
        return 3.5;
      case "BB":
        return 3;
      case "CB":
        return 2.5;
      case "CC":
        return 2;
      case "DC":
        return 1.5;
      case "DD":
        return 1;
      case "FD":
        return 0.5;
      case "FF":
        return 0;
      default:
        return 1;
    }
  }

  static List<DropdownMenuItem<double>> getLetterNotes() {
    return _letterNotes()
        .map((e) => DropdownMenuItem(
              value: _numberNotes(e),
              child: Text(e),
            ))
        .toList();
  }

  static List<int> _allCredits() {
    return List.generate(10, (index) => index + 1).toList();
  }

  static List<DropdownMenuItem<int>> getAllCredits() {
    return _allCredits()
        .map((e) => DropdownMenuItem(
              value: e,
              child: Text("$e Kredi"),
            ))
        .toList();
  }
}
