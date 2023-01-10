void main(List<String> args) {
  cevreHesapla();
  alanHesapla(5, 10);
  int hacim = hacimHesapla(8, 9, 10);
  print("Hacim: $hacim");
  print("Çarpım: ${sayilariCarp(5, 6)}");
  print("Max: ${maxOlaniBul(5, 6)}");
}

int hacimHesapla(int en, int boy, int yukseklik) {
  return en * boy * yukseklik;
}

cevreHesapla() {
  int en = 5;
  int boy = 19;
  double cevre = (en + boy) / 2;
  print("Çevre: $cevre");
}

alanHesapla(int sayi1, int sayi2) {
  print("Alan: ${sayi1 * sayi2}");
}

int sayilariCarp(int s1, int s2) => s1 * s2;

int maxOlaniBul(int s1, int s2) => s1 > s2 ? s1 : s2;
/*
Fonksiyonlar
- Bir uygulama geliştirirken bir problemi çözerken o problemde belli işi yapan kodları method olarak tanımlayabiliriz.
- Parametre alabilir ve almadan da oluşturulabilir.
- Metotlar gerideye değer döndürebilir veya döndürmeyebilir.Değer döndürmeyen method tanımlarken başına void yazılır.
- Metot ve return opsiyoneldir..

dönüş tipi metotAdı (parametreler) {
  // kodlar
  return değer;
}

* Kısa Gösterim (Fat Arrow)
- Bir metot tek bir satır kod içeriyorsa ve bu satırda return kullanılmıyorsa metotun başına => işareti konulabilir.

*/