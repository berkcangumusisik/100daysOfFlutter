void main(List<String> args) {
  double sayi1 = 9;
  double sayi2 = 6;

  print("$sayi1 + $sayi2 toplamı ${sayi1+sayi2}");
  print("$sayi1 - $sayi2 farkı ${sayi1-sayi2}");
  print("$sayi1 * $sayi2 çarpımı ${sayi1*sayi2}");
  print("$sayi1 / $sayi2 bölümü ${sayi1/sayi2}");
  print("$sayi1 % $sayi2 mod ${sayi1%sayi2}");

  //Daire	alanını	değişkenler	oluşturarak	hesaplayınız.
  final pi = 3.14;
  var yariCap = 2.0;
  var alan = pi * yariCap * yariCap;
  print("Dairenin alanı $alan");

  // F = m * a
  double m = 12.5;
  var a = 10.0;
  var F = m * a;
  print("F : ${F}");


  //Delta x
  double v = 12.7;
  double v0 = 23.56;
  double t = 3.5;
  double x1 = ((v + v0) / 2) * t;
  print("Delta x = ${x1}");

  //Kısa gösterim 
  int y = 10;
  y += 2; //y = y + 2
  print(y);
}

/**
 * + Toplama
 * - Çıkarma
 * / Bölme
 * * Çarpma
 * % Mod alma
 */