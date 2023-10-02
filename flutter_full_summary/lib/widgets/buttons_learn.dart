import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buton İşlemleri"),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return const Color.fromARGB(255, 142, 195, 237);
              } else {
                return const Color.fromARGB(255, 197, 187, 231);
              }
            })),
            child: const Text("Text Button"),
          ),
          TextButton.icon(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
              foregroundColor: MaterialStateColor.resolveWith(
                (states) => Colors.white,
              ),
              overlayColor: MaterialStateColor.resolveWith(
                (states) => Colors.green,
              ),
            ),
            icon: const Icon(Icons.add),
            label: const Text("Text Button Icon"),
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                shadowColor: Colors.black,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text("Elevated Button")),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text("Elevated Button Icon"),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text("Outlined Button"),
          ),
        ],
      ),
    );
  }
}

/**
 TextButton : TextButton, kullanıcıya tıklanabilir metin göstermek için kullanılır. Yalnızca metin göstermek için kullanılır. 
 TextButton.icon : TextButton.icon, kullanıcıya tıklanabilir metin ve simge göstermek için kullanılır.
 ElevatedButton : ElevatedButton, kullanıcıya tıklanabilir metin göstermek için kullanılır. Arka plan rengi vardır. 
 ElevatedButton.icon : ElevatedButton.icon, kullanıcıya tıklanabilir metin ve simge göstermek için kullanılır. Arka plan rengi vardır.
 OutlinedButton : OutlinedButton, kullanıcıya tıklanabilir metin göstermek için kullanılır. Arka plan rengi yoktur.

 ButtonStyle : Butonun özelliklerini değiştirmek için kullanılır.
 MaterialStateProperty : Butonun özelliklerini değiştirmek için kullanılır.
  MaterialStateColor : Butonun özelliklerini değiştirmek için kullanılır. resolveWith().contains() ile butonun durumuna göre özelliklerini değiştirebiliriz.

  OutlinedButton.styleFrom() : Butonun özelliklerini değiştirmek için kullanılır.
  RoundedRectangleBorder : Butonun şeklini değiştirmek için kullanılır.
 */