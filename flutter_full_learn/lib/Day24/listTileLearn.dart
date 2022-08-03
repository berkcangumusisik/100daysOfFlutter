import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  final imageUrl = "https://picsum.photos/seed/picsum/536/354";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Tile Kullanımı"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Image.network(imageUrl),
                onTap: () {},
                subtitle: const Text('How do you use your card'),
                minVerticalPadding: 0,
                dense: true,
                leading: Container(
                    height: 200,
                    width: 30,
                    alignment: Alignment.topCenter,
                    child: const Icon(Icons.money)),
                trailing:
                    const SizedBox(width: 20, child: Icon(Icons.chevron_right)),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

/**
 * ListTile widget kullanımı
 - subtitle : ListTile'ın altında yazı gösterir.
 - leading : ListTile'ın solunda yazı gösterir.
 - trailing : ListTile'ın sağında yazı gösterir.
 - onTap : ListTile'ın tıklanmasının sonucunu alır.
 - dense : ListTile'ın kalınlığını azaltır.
 - minVerticalPadding : ListTile'ın minimum yükseklikini ayarlar.
 */