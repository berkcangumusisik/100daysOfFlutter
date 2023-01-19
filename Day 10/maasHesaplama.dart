/*
Parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen maaşı geri döndüren fonksiyonu yazınız.
- 1 günde 8 saat çalışılıyor.
- Çalışılan saat başına 10 TL ücret alınıyor.
- Mesai ücreti olarak 20 TL alınıyor.
- 160 saat ve üzeri mesai sayılıyor.
*/

void main(List<String> args) {
  var maas = Maas();
  int sonuc = maas.maasHesapla(20);
  print(sonuc);
}

class Maas {
  int maasHesapla(int gunSayisi) {
    int calismaSaati = gunSayisi * 8;
    int maas = 0;
    if (calismaSaati > 160) {
      maas = 160 * 10 + (calismaSaati - 160) * 20;
    } else {
      maas = calismaSaati * 10;
    }

    return maas;
  }
}
