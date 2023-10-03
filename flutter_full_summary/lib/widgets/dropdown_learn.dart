import 'package:flutter/material.dart';

class DropdownLearn extends StatefulWidget {
  const DropdownLearn({super.key});

  @override
  State<DropdownLearn> createState() => _DropdownLearnState();
}

class _DropdownLearnState extends State<DropdownLearn> {
  String? _selectedCity;
  final List<String> _allCity = <String>[
    'Ankara',
    'İstanbul',
    'İzmir',
    'Bursa',
    'Antalya',
    'Adana',
    "Amasya"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown Kullanımı'),
      ),
      body: Center(
          child: DropdownButton(
        hint: const Text('Şehir Seçiniz'),
        icon: const Icon(Icons.arrow_drop_down_circle),
        style: const TextStyle(color: Colors.black, fontSize: 20),
        items: _allCity.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: _selectedCity,
        onChanged: (String? value) {
          setState(() {
            _selectedCity = value;
          });
        },
      )),
    );
  }
}


/**
 * DropdownButton : Bir açılır menü oluşturmak için kullanılır.
 * hint : Açılır menüdeki ilk değeri belirler.
 * onChanged : Açılır menüdeki değer değiştiğinde çalışır.
 * value : Açılır menüdeki seçili değeri belirler.
 * items : Açılır menüdeki değerleri belirler.
 */