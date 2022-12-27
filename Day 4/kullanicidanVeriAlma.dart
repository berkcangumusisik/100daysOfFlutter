import 'dart:io';

void main(List<String> args) {
  print("Lütfen adınızı giriniz: ");
  String? isim = stdin.readLineSync();
  print("Merhaba $isim");
  print("Lütfen yaşınızı giriniz: ");
  int? yas = int.parse(stdin.readLineSync()!);
  print("Yaşınız: $yas");

  print("1. sayıyı giriniz: ");
  int? sayi1 = int.parse(stdin.readLineSync()!);
  print("2. sayıyı giriniz: ");
  int? sayi2 = int.parse(stdin.readLineSync()!);
  int toplam = sayi1 + sayi2;
  print("Toplam: $toplam");
}
/*
* Sadece string ifadeleri okumak için stdin.readLineSync() kullanılır.
* stdin.readLineSync() => Kullanıcıdan veri almak için kullanılır.
* stdin kütüphanesini kullanabilmek için import 'dart:io'; ifadesi kullanılır.
* String dışında bir veri tipi okumak için int.parse() veya double.parse() kullanılır.

*/