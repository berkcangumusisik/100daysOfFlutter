/**
 * Parametre olarak girilen kota miktarına göre ücreti hesaplayarak geri döndüren fonksiyon yazınız.
 * 50 GB = 100 TL
 * Kota aşımı sonrası her 1 GB = 4 TL
 */
void main(List<String> args) {
  int toplamUcret = internetUcreti(60);
  print("Toplam İnternet Ücreti : $toplamUcret TL");
}

int internetUcreti(int GB) {
  int ucret = 0;
  if (GB > 50) {
    int kotaFazlasi = GB - 50;
    ucret = 100 + kotaFazlasi * 4;
  } else {
    ucret = 100;
  }
  return ucret;
}
