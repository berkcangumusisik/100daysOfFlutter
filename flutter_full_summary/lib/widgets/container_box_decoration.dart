import 'package:flutter/material.dart';

class BoxDecorationLearn extends StatelessWidget {
  const BoxDecorationLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Colors.red,
              width: 5,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: const FlutterLogo(
            size: 128,
          ),
        ),
      ),
    );
  }
}

/**
 * BoxDecoration 
 - Container widget'ının şeklini ve rengini belirler.
 - color : Container widget'ının rengini belirler.
 - shape : Container widget'ının şeklini belirler. BoxShape.circle şeklinde kullanılırsa Container widget'ının şekli daire olur.
 - border : Container widget'ının kenarlığını belirler. Border.all() şeklinde kullanılırsa Container widget'ının kenarlığı olur.
 
 */
