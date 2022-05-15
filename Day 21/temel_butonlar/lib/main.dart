import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resim Çalışmaları',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        textTheme: TextTheme(
          headline1:
              TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Temel Buton Örnekleri"),
        ),
        body: TemelButonlar(),
      ),
    );
  }
}

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () {
            debugPrint('Uzun basıldı');
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          child: Text('Text Button'),
        ),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
            //backgroundColor: MaterialStateProperty.all(Colors.red),
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.teal;
              }
              if (states.contains(MaterialState.hovered)) {
                return Colors.orange;
              }
              return null;
            }),
            foregroundColor: MaterialStateProperty.all(Colors.yellow),
            overlayColor:
                MaterialStateProperty.all(Colors.yellow.withOpacity(0.5)),
          ),
          icon: Icon(Icons.add),
          label: Text('Text Button with Icon'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            onPrimary: Colors.yellow,
          ),
          child: Text('Elevated Button'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Elevated with Icon'),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text('Outlined Button'),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(color: Colors.purple, width: 2),
          ),
          label: Text('Outlined with Icon'),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          style: OutlinedButton.styleFrom(
            side: BorderSide(width: 2, color: Colors.red),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
          label: Text('Outlined with Icon'),
        ),
      ],
    );
  }
}
/**
Text Button
  * Üzerine yazı yazılabilen veya icon ekleyebildiğimiz buton.
Elevated Button
  * Text Button ile aynı işi yapar. Fakat arkasına renk verir.
Outlined Button
  * Kenarlıklarınızın dışına renk verir.
 */