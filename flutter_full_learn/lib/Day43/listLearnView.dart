import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListLearnView extends StatefulWidget {
  const ListLearnView({Key? key}) : super(key: key);

  @override
  State<ListLearnView> createState() => _ListLearnViewState();
}

class _ListLearnViewState extends State<ListLearnView> {
  List<Ogrenci> tumOgrenciler = List.generate(
    5000,
    (index) => Ogrenci(
        index + 1, 'Öğrenci Adı ${index + 1}', 'Öğrenci Soyadı ${index + 1}'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Öğrenci Listesi'),
        ),
        body: buildListviewSeparated());
  }

  ListView buildListviewSeparated() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        var oankiOgrenci = tumOgrenciler[index];
        return Card(
          color: index % 2 == 0 ? Colors.orange : Colors.purple,
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
        return const SizedBox();
      },
    );
  }

  ListView klasikListView() {
    return ListView(
      children: tumOgrenciler
          .map(
            (Ogrenci ogr) => ListTile(
              title: Text(ogr.isim),
              subtitle: Text(ogr.soyisim),
              leading: CircleAvatar(
                child: Text(ogr.id.toString()),
              ),
            ),
          )
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
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);

  @override
  String toString() {
    return 'İsim : $isim Soyisim:$soyisim id:$id';
  }
}
