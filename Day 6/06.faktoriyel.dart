/**
 * Parametre olarak girilen sayının faktöriyelini hesaplayıp geri döndüren metodu yazınız.
 */
void main(List<String> args) {
  var fak = 6;
  var faktoriyel = faktoriyelHesapla(fak);
  print("$fak! = $faktoriyel");
}

int faktoriyelHesapla(int sayi) {
  int sonuc = 1;
  for (var i = 1; i < sayi + 1; i++) {
    sonuc *= i;
  }
  return sonuc;
}
