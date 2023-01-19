/**
 * Parametre olarak girilen kota miktarına göre internet ücreti hesaplayan fonksiyonu yazınız.
 * 50 GB 100 TL
 * Kota aşıldığında 1 GB başına 4 TL ücret alınıyor.
 */
void main(List<String> args) {
  var internet = Internet();
  int sonuc = internet.internetUcretHesaplama(52);
  print(sonuc);
}


class Internet{
  int internetUcretHesaplama(int GB){
    int ucret = 0;
    if (GB <= 50) {
      ucret = 100;
    } else {
      ucret = 100 + (GB - 50) * 4;
    }
    return ucret;
  }
}