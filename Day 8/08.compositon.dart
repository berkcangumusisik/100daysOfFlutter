import 'dart:io';

import 'Adres.dart';
import 'Personel.dart';

void main(List<String> args) {
  List<Personel> personeller = [];

  for(var i=1;i<6;i++){//1,2,3,4,5

    print("$i. Personel ad : ");//1. Personel ad :
    String isim = stdin.readLineSync()!;

    print("$i. Personel adres il : ");
    String il = stdin.readLineSync()!;

    print("$i. Personel adres ilçe : ");
    String ilce = stdin.readLineSync()!;

    var adres = Adres(il,ilce);

    var personel = Personel(i,isim,adres);

    personeller.add(personel);

  }

  for (var p in personeller){
    print("**************");
    print("Personel no : ${p.no}");
    print("Personel ad : ${p.isim}");
    print("Personel adres il : ${p.adres.il}");
    print("Personel adres ilçe : ${p.adres.ilce}");
  }


}