import 'car.dart';

void main(List<String> args) {
  
  var bmw = Araba();
  bmw.renk = "Mavi";
  bmw.hiz=200;
  bmw.calisiyorMu=true;
  print(bmw.renk);
  print(bmw.hiz);
  print(bmw.calisiyorMu);

  print("----------------------------");
  bmw.bilgiAl();
  bmw.durdur();
  print("----------------------------");
  bmw.bilgiAl();
  print("----------------------------");
  bmw.calistir();
  bmw.bilgiAl();
  print("----------------------------");
  bmw.hizlan(50);
  bmw.bilgiAl();

  print("----------------------------");
  bmw.yavasla(20);
  bmw.bilgiAl();


  var limuzin = Araba();

  limuzin.renk="Beyaz";
  limuzin.hiz=100;
  limuzin.calisiyorMu=true;

  limuzin.bilgiAl();
  limuzin.durdur();
  limuzin.bilgiAl();
}



/**
 NESNE TABANLI PROGRAMLAMA
 * Birden çok kullanım için nesneler soyutlanarak bilgisayar koda dönüştürür. Oluşan soyut taslaklara class(sınıf) denir.
 * Nesneler sınıfın soyutlanmış halidir.
 * Nesneler durum (state) ve davranış biçimleri (behaviour - metod) vardır.
 * Araba için durum renk, hız, kapasitedir. Davranış ise hızlanmak ve yavaşlamak için pedallarıdır.
 CLASS TANIMLAMA
 class Isim{

 }

 var nesneAdi = olusturulanSinif();

 */