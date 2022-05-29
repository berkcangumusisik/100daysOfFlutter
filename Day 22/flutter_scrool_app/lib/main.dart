import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    title:
    "Card Kullanımı";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card ve List Title'),
        ),
        body: Center(
          child: ListView(
            children: [
              Column(
                children: [
                  TekListeElemani(),
                  TekListeElemani(),
                  TekListeElemani(),
                  TekListeElemani(),
                  TekListeElemani(),
                  TekListeElemani(),
                  TekListeElemani(),
                  TekListeElemani(),
                ],
              ),
              Text("Selam"),
              ElevatedButton(
                onPressed: () {},
                child: Text("Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SingleChildScrollView SingleChildKullanimi() {
    return SingleChildScrollView(
      child: Column(
        children: [
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
          TekListeElemani(),
        ],
      ),
    );
  }

  Column TekListeElemani() {
    return Column(
      children: [
        Card(
          color: Colors.orange.shade100,
          shadowColor: Colors.amber,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            leading: Icon(Icons.add),
            title: Text("Başlık kısmı"),
            subtitle: Text("Alt başlık kısmı"),
            trailing: Icon(Icons.real_estate_agent),
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 1,
          height: 10,
          indent: 20,
        ),
      ],
    );
  }
}

/**
 CARD
 * Card ile Kart, bir albüm, coğrafi bir yer, bir yemek, iletişim bilgileri vb. İle ilgili bazı bilgileri göstermek için child'a, children alan widgetler verilerek yapılabilir.
 * elevation ile gölgeleme efekti verilir.
 ListTile
  * ListTile'ın child'ına, ListTile'ın içinde bulunan elemanların gösterilmesi için kullanılır.
  * leading : ListTile'ın sol tarafında gösterilecek eleman.
  * title : ListTile'ın orta tarafında gösterilecek eleman.
  * subtitle : ListTile'ın alt tarafında gösterilecek eleman.
  * trailing : ListTile'ın sağ tarafında gösterilecek eleman.
  DIVIDER
  * Widgetler arasında gölgeleme efekti vermek için kullanılır.
  * color : Gölgeleme efekti rengi.
  * thickness : Gölgeleme efekti kalınlığı.
  * height : Gölgeleme efekti yüksekliği.
  * indent : Gölgeleme efekti yatayda boşluk bırakma.
  SingleChildScrollView
  * Widgetlerin aşağıya doğru kaydırılması için kullanılır.
  ListView
  * ListView'ın child'ına, ListView'ın içinde bulunan elemanların gösterilmesi için kullanılır.
  * children : ListView'ın içinde bulunan elemanların gösterilmesi için kullanılır.
  
 */