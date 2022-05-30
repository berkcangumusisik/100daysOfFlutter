import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    "Layout Sorunları";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout Sorunları'),
        ),
        body: Container(
          child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Container(
                    height: 200,
                    color:Colors.orange.shade200,
                  ),
                  Container(
                    width: 200,
                    color:Colors.orange.shade400,
                  ),
                  Container(
                    width: 200,
                    color:Colors.orange.shade200,
                  ),
                  Container(
                    width: 200,
                    color:Colors.orange.shade400,
                  ),
                  Container(
                    height: 200,
                    color:Colors.orange.shade200,
                  ),
                  Container(
                    width: 200,
                    color:Colors.orange.shade400,
                  ),
                ],
              ),
          
          decoration: BoxDecoration(
            border: Border.all(
              width: 4,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }

  Column ColumnIcindeListe() {
    return Column(
          children: [
            Text("Başladı"),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    height: 200,
                    color:Colors.orange.shade200,
                  ),
                  Container(
                    height: 200,
                    color:Colors.orange.shade400,
                  ),
                  Container(
                    height: 200,
                    color:Colors.orange.shade200,
                  ),
                  Container(
                    height: 200,
                    color:Colors.orange.shade400,
                  ),
                  Container(
                    height: 200,
                    color:Colors.orange.shade200,
                  ),
                  Container(
                    height: 200,
                    color:Colors.orange.shade400,
                  ),
                ],
              ),
            ),
            Text("Bitti"),
          ],
        );
  }
}

/**
 * shrinkWrap : true ise ListView() çocukları kadar yer kaplar.
 * Dikeyde hizalarken height, yatayda kaydırmak içinse width değeri önemlidir.
 */