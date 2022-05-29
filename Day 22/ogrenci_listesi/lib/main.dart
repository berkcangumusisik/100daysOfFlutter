import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = true;
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  List<Ogrenci> tumOgrenciler = List.generate(
    500,
    (index) => Ogrenci(
        index + 1, "Öğrenci Adı ${index + 1}", "Öğrenci Soyadı ${index + 1}"),
  );
  @override
  Widget build(BuildContext context) {
    title:
    "Öğrenci Listesi";

    return MaterialApp(
      builder: EasyLoading.init(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Öğrenci Listesi'),
        ),
        body: buildListviewSeparated(),
      ),
    );
  }

  ListView buildListviewSeparated() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        var oankiOgrenci = tumOgrenciler[index];
        return Card(
          color:
              index % 2 == 0 ? Colors.orange.shade100 : Colors.purple.shade100,
          child: ListTile(
            onTap: () {
              if (index % 2 == 0) {
                EasyLoading.instance.backgroundColor = Colors.red;
                EasyLoading.instance.textColor = Colors.purple;
              } else {
                EasyLoading.instance.backgroundColor = Colors.blue;
              }
              EasyLoading.showToast('Eleman tıklandı',
                  duration: Duration(
                    seconds: 3,
                  ),
                  dismissOnTap: true,
                  toastPosition: EasyLoadingToastPosition.bottom);
            },
            onLongPress: () {
              _alertDialogIslemleri(context, oankiOgrenci);
            },
            title: Text(oankiOgrenci.isim),
            subtitle: Text(oankiOgrenci.soyisim),
            leading: CircleAvatar(
              child: Text(oankiOgrenci.id.toString()),
            ),
          ),
        );
      },
      itemCount: tumOgrenciler.length,
      separatorBuilder: (context, index) {
        var yeniIndex = index + 1;
        if (yeniIndex % 4 == 0) {
          return Divider(
            thickness: 2,
            color: Colors.teal,
          );
        }
        return SizedBox();
      },
    );
  }

  ListView klasikListView() {
    return ListView(
      children: tumOgrenciler
          .map((Ogrenci ogr) => ListTile(
                leading: CircleAvatar(
                  child: Text(
                    ogr.id.toString(),
                  ),
                ),
                title: Text(ogr.isim),
                subtitle: Text(ogr.soyisim),
              ))
          .toList(),
    );
  }

  void _alertDialogIslemleri(BuildContext myContext, Ogrenci secilen) {
    showDialog(
        barrierDismissible: false,
        context: myContext,
        builder: (context) {
          return AlertDialog(
            title: Text(secilen.toString()),
            content: SingleChildScrollView(
                child: ListBody(
              children: [
                Text('Berkcan' * 100),
                Text('Berkcan' * 100),
                Text('Berkcan' * 100),
              ],
            )),
            actions: [
              ButtonBar(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('KAPAT'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('TAMAM'),
                  ),
                ],
              )
            ],
          );
        });
  }
}

class Ogrenci {
  late int id;
  late String isim;
  late String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);

  @override
  String toString() {
    return 'Isim : $isim Soyisim:$soyisim id:$id';
  }
}



/**
 * ListView.builder(), özellikle ürünler, haberler, mesajlar, arama sonuçları gibi API'lerden alınan veri listeleri olmak üzere uzun veya sonsuz listeler oluşturmak için kullanılır. Kaynak (CPU, RAM) tüketimini azaltmak ve iyileştirmek için listelerin yalnızca görünür öğeleri çağrılır. 
 * ListView.separated() ile ListView.builder()'a ekstra öğeler arasında ayırma özelliği eklenebilir.
 */