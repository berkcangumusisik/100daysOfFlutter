void main(List<String> args) {
  var dikdortgen = Dikdortgen();
  double sonuc = dikdortgen.cevreHesapla(10, 20);
  print(sonuc);
}

class Dikdortgen{
  double cevreHesapla(double kenar1, double kenar2){
    return 2 * (kenar1 + kenar2);
  }
}

// Kenarları parametre olarak girilen ve dikdörtgenin çevresini hesaplayan fonksiyonu yazınız.