import 'package:flutter/material.dart';

class PopupMenu extends StatefulWidget {
  const PopupMenu({super.key});

  @override
  State<PopupMenu> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
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
        title: const Text('Popup Menu Kullanımı'),
      ),
      body: Center(
        child: PopupMenuButton<String>(
            onSelected: (String value) {
              setState(() {
                _selectedCity = value;
              });
            },
            child: Text(_selectedCity ?? "Şehir Seçiniz"),
            itemBuilder: (BuildContext context) {
              return _allCity.map((String value) {
                return PopupMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList();
            }),
      ),
    );
  }
}
