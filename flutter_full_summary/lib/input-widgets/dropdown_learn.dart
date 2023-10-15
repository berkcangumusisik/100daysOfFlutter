import 'package:flutter/material.dart';

class DropdownLearn extends StatefulWidget {
  const DropdownLearn({super.key});

  @override
  State<DropdownLearn> createState() => _DropdownLearnState();
}

class _DropdownLearnState extends State<DropdownLearn> {
  int _selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dropdown Kullanımı"),
        ),
        body: Center(
          child: Column(
            children: [
              DropdownButton(
                items: const [
                  DropdownMenuItem(value: 1, child: Text("1")),
                  DropdownMenuItem(value: 2, child: Text("2")),
                  DropdownMenuItem(value: 3, child: Text("3")),
                  DropdownMenuItem(value: 4, child: Text("4")),
                  DropdownMenuItem(value: 5, child: Text("5")),
                ],
                hint: const Text("Seçiniz"),
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value!;
                    Text("Seçilen değer : $_selectedValue");
                  });
                },
              )
            ],
          ),
        ));
  }
}


/**
 * DropdownButton() : Bir açılır menü oluşturmak için kullanılır.
 * items : Açılır menüdeki elemanları belirtir.
 * hint : Açılır menüdeki ilk değeri belirtir.
 * onChanged : Açılır menüdeki değer değiştiğinde çalışacak fonksiyonu belirtir.
 * 
 */