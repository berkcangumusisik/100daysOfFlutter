import 'dart:io';

void main(List<String> args) {
  // İki notu girilen öğrencinin ortalamasının bularak sonucu ekrana yazdırınız.
  print("Birinci notu giriniz : ");
  int? birinciNot = int.parse(stdin.readLineSync()!);

  print("İkinci notu giriniz : ");
  int? ikinciNot = int.parse(stdin.readLineSync()!);

  double ortalama = (birinciNot + ikinciNot)/2;
  print("Ortalamanız : ${ortalama}");
}
