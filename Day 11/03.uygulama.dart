import 'cemberDaire.dart';

/**
 * Soru 1 
 CemberDaire isimli sınıf oluşturun. Bu sınıfın yarıçap alan kurucusu olmalı.
 Ayrıca çevre ve alanını hesaplayan metotlar olmalı.
 pi sayısı 3.14 alınmalı

 */

void main(List<String> args) {
  // Cevap 1
  CemberDaire cember1 = CemberDaire(4);
  print("Alan = ${cember1.alanHesapla()}");
  print("Çevre = ${cember1.cevreHesapla()}");


}
