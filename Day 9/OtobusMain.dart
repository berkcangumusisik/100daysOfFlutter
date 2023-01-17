import 'Otobus.dart';

void main(List<String> args) {
  var kamilKoc = Otobus();
  kamilKoc.kapasite = 50;
  kamilKoc.nereden = "İstanbul";
  kamilKoc.nereye = "Ankara";
  kamilKoc.yolcuSayisi = 10;

  kamilKoc.bilgiAl();
  print("---------------------");
  kamilKoc.yolcuAl(2);
  kamilKoc.bilgiAl();
  print("---------------------");
  kamilKoc.yolcuIndir(3);
  kamilKoc.bilgiAl();
}
