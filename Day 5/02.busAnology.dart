
import 'bus.dart';

void main(){

  var kamilKoc = Otobus();

  kamilKoc.kapasite = 50;
  kamilKoc.nereden = "Bursa";
  kamilKoc.nereye = "Ankara";
  kamilKoc.mevcutYolcu = 10;

  kamilKoc.bilgiAl();

  kamilKoc.yolcuIndir(5);

  kamilKoc.bilgiAl();

  kamilKoc.yolcuAl(20);

  kamilKoc.bilgiAl();

}