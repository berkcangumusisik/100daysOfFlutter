import 'package:flutter/material.dart';
import 'package:horoscope_app/horoscope_list.dart';
import 'package:horoscope_app/route_generator.dart';

void main() {
  runApp(const HoroscopeApp());
}

class HoroscopeApp extends StatelessWidget {
  const HoroscopeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HoroscopeList(),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}
