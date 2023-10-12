import 'package:flutter/material.dart';
import 'package:horoscope_app/horoscope_detail.dart';
import 'package:horoscope_app/horoscope_list.dart';
import 'package:horoscope_app/model/horoscope.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HoroscopeList());
      case '/horoscopeDetail':
        final selected = settings.arguments as Horoscope;
        return MaterialPageRoute(
          builder: (context) => HoroscopeDetail(horoscope: selected),
        );
    }
    return null;
  }
}
