import 'dart:io';

void main(List<String> args) {
  print("Anne çoçuğu ekmek almaya yolladı ");
  print("Çocuk ekmek almak için evden çıkar");
  Future<String> sonuc = uzunSurenIslem();
  sonuc.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => "Ekmek alma operasyonu bitti");
  print("Peynir zeytin hazırlar");
  print("Kahvaltı hazır");
}

Future<String> uzunSurenIslem() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 5), () {
    return "Çocuk ekmek alarak eve gelir";///throw Exception("Ekmek kalmamış");
  });
  return sonuc;
}

/**
 * Future : Fonksiyon tanımlanmasında fonksiyon isminden önce gelir. Metodun asenkron çalışacağını ve await metoduyla karşılaşınca çalışmasını askıya alır.
 */