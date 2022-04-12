import 'dart:io';

import 'Ogrenciler.dart';

void main(List<String> args) {
  var sayac = 1;
  List<Ogrenciler> ogrenciler = [];

  while(true){

    print("Öğrenci adı giriniz");
    String ad = stdin.readLineSync()!;

    print("Öğrenci sınıfı giriniz");
    String sinif = stdin.readLineSync()!;

    var yeniOgrenci = Ogrenciler(sayac,ad,sinif);
    sayac = sayac + 1;

    ogrenciler.add(yeniOgrenci);

    print("Çıkmak için (1) - Devam etmek için diğer sayılar");
    int cikis = int.parse(stdin.readLineSync()!);

    if(cikis == 1){

      for(var ogrenci in ogrenciler){
        print("**********");
        print("Öğrenci no : ${ogrenci.no}");
        print("Öğrenci ad : ${ogrenci.isim}");
        print("Öğrenci sınıf : ${ogrenci.sinif}");
      }

      print("Çıkış yapıldı");
      break;
    }
  }



}