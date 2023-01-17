import 'Araba.dart';

void main(List<String> args) {
  var bmw = Araba();
  bmw.renk = "Kırmızı";
  bmw.hiz = 200;
  bmw.calisiyorMu = true;
  
  bmw.bilgiAl();
  bmw.durdur();
  bmw.bilgiAl();
  bmw.calistir();
}