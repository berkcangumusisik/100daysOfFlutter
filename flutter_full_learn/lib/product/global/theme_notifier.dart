import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/theme/light_thema.dart';

class ThemeNotifier extends ChangeNotifier {
  bool isLightTheme = false;

  void changeTheme() {
    isLightTheme = !isLightTheme;
    notifyListeners();
  }

  ThemeData get currenTheme =>
      isLightTheme ? ThemeData.light() : ThemeData.dark();

  ThemeData get currentTheme =>
      !isLightTheme ? LighTheme().theme : ThemeData.dark();
}
