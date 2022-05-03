import 'dart:math';

main(List<String> args) {
  double deger = kareKokAl(-20);
  print(deger);
}

double kareKokAl(int i) {
  if (i < 0) {
    throw FormatException("Negatif sayı girdiniz");
  } else {
    return sqrt(i);
  }
}
