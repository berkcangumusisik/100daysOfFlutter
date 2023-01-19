void main(List<String> args) {
  var donustur = Donustur();
  double sonuc = donustur.donustur(30);
  print(sonuc);
}


class Donustur{
  double donustur(double derece){
    return derece * 1.8 + 32;
  }
}
/*
Parametre olarak girilen dereceyi Fahrenhit'e çevirdikten sonra geri döndüren fonksiyonu yazınız.
T(°F) = T(°C) × 1.8 + 32
*/