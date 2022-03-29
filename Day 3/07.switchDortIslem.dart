import 'dart:io';

void main(List<String> args) {
  print("Toplama (1)");
  print("Çıkarma (2)");
  print("Çarpma (3)");
  print("Bölme (4)");

  int tercih = int.parse(stdin.readLineSync()!);

  print("Birinci sayıyı giriniz");
  int sayi1 = int.parse(stdin.readLineSync()!);

  print("İkinci sayıyı giriniz");
  int sayi2 = int.parse(stdin.readLineSync()!);

  switch (tercih){
    case 1 : {print("Toplama : ${sayi1+sayi2}");}break;
    case 2 : {print("Çıkarma : ${sayi1-sayi2}");}break;
    case 3 : {print("Çarpma : ${sayi1*sayi2}");}break;
    case 4 : {print("Bölme : ${sayi1/sayi2}");}break;
    default: {print("Böyle bir işlem yok");}break;
  }

}