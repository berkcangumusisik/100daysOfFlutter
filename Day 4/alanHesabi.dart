// Kullanıcıdan alınan seçime göre hesap yapan program

import 'dart:io';

void main(List<String> args) {
  print("Dikdörtgen alanı için 1'e basınız.");
  print("Daire alanı için 2'ye basınız.");

  int? secim = int.parse(stdin.readLineSync()!);
  if (secim == 1) {
    print("Dikdörtgenin uzun kenarını giriniz: ");
    int? uzunKenar = int.parse(stdin.readLineSync()!);
    print("Dikdörtgenin kısa kenarını giriniz: ");
    int? kisaKenar = int.parse(stdin.readLineSync()!);
    int alan = uzunKenar * kisaKenar;
    print("Dikdörtgenin alanı: $alan");
  } else if (secim == 2) {
    print("Dairenin yarıçapını giriniz: ");
    int? yaricap = int.parse(stdin.readLineSync()!);
    double alan = 3.14 * yaricap * yaricap;
    print("Dairenin alanı: $alan");
  }
}
