import 'dart:io';

void main(List<String> args) {
  print("Adınızı yazınız : ");
  String? isim = stdin.readLineSync();
  print("Adınız $isim");

  print("1.sayıyı giriniz ");
  int? sayi1 = int.parse(stdin.readLineSync()!);

  print("2.sayıyı giriniz ");
  int? sayi2 = int.parse(stdin.readLineSync()!);

  print("${sayi1  + sayi2}");
}
/**
 * Sadece string türünde girdi olabilir.
 * stdin import edilmelidir.
 * readLineSync() metodu ile veri konsoldan okunur
 */