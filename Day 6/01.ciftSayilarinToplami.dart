/**
 * Parametre olarak bir tane int sayı alan fonksiyon yazınız. 
 Fonksiyon aldığı değere kadar olan çift sayıların toplamını geriye döndürsün
 */
void main(List<String> args) {
  int toplam = ciftSayilariTopla(20);
  print("Çift Sayıların Toplamı : ${toplam}");
}

ciftSayilariTopla(int sayi) {
  int toplam = 0;

  for (int i = 0; i < sayi; i++) {
    if (i % 2 == 0) {
      toplam += i;
    }
  }

  return toplam;
}
