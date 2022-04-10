/**
 * PArametre olarak girilen kenar sayısına göre iç açılar toplamını hesaplayıp geri döndüren fonlsiyon yazınız.
 * Formül (n-2) * 180
 */

void main(List<String> args) {
  int kenarSayisi = 5;
  int icAci = icAciHesapla(kenarSayisi);
  print("$kenarSayisi kenarlı çokgenin iç açıları toplamı : $icAci");
}

int icAciHesapla(int kenarSayisi) {
  int toplam = (kenarSayisi - 2) * 180;
  return toplam;
}
