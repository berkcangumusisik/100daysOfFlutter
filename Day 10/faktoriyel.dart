void main(List<String> args) {
  var faktoriyel = Faktoriyel();
  int sonuc = faktoriyel.hesapla(5);
  print(sonuc);
}

class Faktoriyel{
  int hesapla(int sayi){
    int sonuc = 1;
    for (var i = 1; i <= sayi; i++) {
      sonuc *= i;
    }
    return sonuc;
  }
}
// Parametre olarak girilen sayının faktöriyelini hesaplayan fonksiyonu yazınız.