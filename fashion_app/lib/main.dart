import 'package:fashion_app/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FashionApp());
}

class FashionApp extends StatelessWidget {
  const FashionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Moda Uygulaması',
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
