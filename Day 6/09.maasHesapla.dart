/**
 * Parametre olarak girilen gün sayısına göre maaş ücreti hesaplayan ve değeri geri döndüren fonksiyon yazınız.
 * 1 günde 8 saat çalışabilir.
 * Çalışma saati ücreti = 10 TL
 * Mesai saati ücreti = 20 TL
 * 160 saat üzeri mesai sayılır.
 */
void main(List<String> args) {
  int toplamMaas = maasHesapla(30);
  print("Maaş : $toplamMaas TL");
}

int maasHesapla(int gun) {
  int calismaSaati = gun * 8;
  print("Çalışma saati : $calismaSaati");
  int maas = 0;
  if (calismaSaati > 160) {
    int mesaiFazlasi = calismaSaati - 160;
    maas = 160 * 10 + mesaiFazlasi * 20;
  } else {
    maas = calismaSaati * 10;
  }
  return maas;
}
