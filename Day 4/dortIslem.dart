// Kullanıcıdan alınan seçime göre hesap yapan program

import 'dart:io';
void main(List<String> args) {
  print("Toplama için 1'e basınız.");
  print("Çıkarma için 2'ye basınız.");
  print("Çarpma için 3'e basınız.");
  print("Bölme için 4'e basınız.");
  
  int? secim = int.parse(stdin.readLineSync()!);
  if(secim == 1){
    print("1. sayıyı giriniz: ");
    int? sayi1 = int.parse(stdin.readLineSync()!);
    print("2. sayıyı giriniz: ");
    int? sayi2 = int.parse(stdin.readLineSync()!);
    int toplam = sayi1 + sayi2;
    print("Toplam: $toplam");
  } else if(secim == 2){
    print("1. sayıyı giriniz: ");
    int? sayi1 = int.parse(stdin.readLineSync()!);
    print("2. sayıyı giriniz: ");
    int? sayi2 = int.parse(stdin.readLineSync()!);
    int fark = sayi1 - sayi2;
    print("Fark: $fark");
  } else if(secim == 3){
    print("1. sayıyı giriniz: ");
    int? sayi1 = int.parse(stdin.readLineSync()!);
    print("2. sayıyı giriniz: ");
    int? sayi2 = int.parse(stdin.readLineSync()!);
    int carpim = sayi1 * sayi2;
    print("Çarpım: $carpim");
  } else if(secim == 4){
    print("1. sayıyı giriniz: ");
    int? sayi1 = int.parse(stdin.readLineSync()!);
    print("2. sayıyı giriniz: ");
    int? sayi2 = int.parse(stdin.readLineSync()!);
    double bolum = sayi1 / sayi2;
    print("Bölüm: $bolum");
  }
}