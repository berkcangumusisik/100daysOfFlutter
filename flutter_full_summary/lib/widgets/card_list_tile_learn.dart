import 'package:flutter/material.dart';

class CardAndListViewLearn extends StatelessWidget {
  const CardAndListViewLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card ve ListView Kullanımı'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _listElement(),
            _listElement(),
            _listElement(),
            _listElement(),
            _listElement(),
            _listElement(),
          ],
        ),
      ),
    );
  }

  Column _listElement() {
    return Column(
      children: [
        Center(
          child: Card(
            color: Colors.blue.shade200,
            shadowColor: Colors.red,
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const ListTile(
              leading: CircleAvatar(child: Icon(Icons.add)),
              title: Text('Flutter'),
              subtitle: Text('Flutter Öğreniyorum'),
              trailing: Icon(Icons.add),
            ),
          ),
        ),
        const Divider(
          color: Colors.red,
          height: 10,
          thickness: 1,
        )
      ],
    );
  }
}


/**
 * Card : Kart oluşturmak için kullanılır.
 * ListTile : Kartın içeriğini oluşturmak için kullanılır.
 * ListView : Liste oluşturmak için kullanılır.
 * Divider : Liste elemanları arasına çizgi eklemek için kullanılır.
 * SingleChildScrollView : Liste elemanlarını sarmak için kullanılır.
 * 
 Card Elementleri
  * color : Kartın rengini belirler.
  * shadowColor : Kartın gölge rengini belirler.
  * elevation : Kartın yüksekliğini belirler.
  * shape : Kartın şeklini belirler.
 ListTile Elementleri
  * leading : Kartın başına bir widget eklemek için kullanılır.
  * title : Kartın başlığını belirler.
  * subtitle : Kartın alt başlığını belirler.
  * trailing : Kartın sonuna bir widget eklemek için kullanılır.
  ListView Elementleri
  * children : Liste elemanlarını belirler.
  Divider Elementleri
  * color : Çizginin rengini belirler.
  * height : Çizginin yüksekliğini belirler.
  * thickness : Çizginin kalınlığını belirler.
  
 */