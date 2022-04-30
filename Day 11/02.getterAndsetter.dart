import 'Musteri.dart';

void main(List<String> args) {
  Musteri m1 = Musteri(100);
  m1.musteriNoAta = 943;
  m1.bilgileriYazdir();
  print(m1.musteriNoSoyle);
}
/**
 * getter: Sınıf değişkenini okumayı sağlar.
 * setter: Sınıf değişkenine veri atamayı sağlar.
 */