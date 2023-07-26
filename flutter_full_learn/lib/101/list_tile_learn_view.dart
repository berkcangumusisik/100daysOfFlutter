import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTileLearnView extends StatelessWidget {
  const ListTileLearnView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: RandomImage(),
              dense: true,
              onTap: () {},
              subtitle: Text("How do you use your card?"),
              leading: Icon(Icons.money),
              trailing: Container(
                width: 20,
                child: Icon(
                  Icons.chevron_right,
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
/**
 * ListTile
 - ListTile widget'ı projemizdeki listelerimizdeki elemanları oluşturmak için kullanılır.
 - title: Listemizdeki elemanın başlığını belirler.
 - subtitle: Listemizdeki elemanın alt başlığını belirler.
  - leading: Listemizdeki elemanın başına bir widget ekler.
  - trailing: Listemizdeki elemanın sonuna bir widget ekler.
  - onTap: Listemizdeki elemana tıklandığında çalışacak fonksiyonu belirler.
  - dense: Listemizdeki elemanın boyutunu küçültür.

 */