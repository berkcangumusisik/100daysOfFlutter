import 'package:flutter/material.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: const Text(
        "Merhaba",
        style: TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("FloatingActionButton Tıklandı");
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.add),
      ),
    );
  }
}

/**
 * Scaffold Widget
 - Scaffold widget'ı, uygulamamızın temel tasarımını oluşturur.
 - Her sayfada Scaffold widget'ı kullanılır.
 - appBar : Scaffold widget'ının başlığını oluşturur.
 - body : Scaffold widget'ının içeriğini oluşturur.
 - floatingActionButton : Scaffold widget'ının kayan butonunu oluşturur. Bu buton genellikle sayfanın sağ alt köşesinde bulunur. onPressed() parametresi ile butona tıklandığında yapılacak işlem belirtilir.

 - theme : Uygulamamızın temasını oluşturur.

 Text Widget
  - Text widget'ı, uygulamamızda yazı yazmak için kullanılır.
  - style : Text widget'ının yazı stili belirlenir.
  - fontSize : Yazı boyutu belirlenir.
  - fontWeight : Yazı kalınlığı belirlenir.
  - color : Yazı rengi belirlenir.
  
 */