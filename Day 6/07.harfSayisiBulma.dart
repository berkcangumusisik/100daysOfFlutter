/**
 * Parametre olarak girilen kelime ve harf için harfin kelime içinde kaç adet olduğunu gösteren bir fonksiyon yazınız.
 */
void main(List<String> args) {
  harfSayisi("almanya", "a");
}

void harfSayisi(String kelime, String harf) {
  var sonuc = 0;
  for (var i = 0; i < kelime.length; i++) {
    if (kelime[i] == harf) {
      sonuc += 1;
    }
  }
  print("Harf Adeti : $sonuc");
}
