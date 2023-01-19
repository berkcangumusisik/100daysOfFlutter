void main(List<String> args) {
  var harfSayisi = HarfSayisi();
  int sonuc = harfSayisi.harfSayisiBul("merhaba", "a");
  print(sonuc);
}

class HarfSayisi{
  int harfSayisiBul(String kelime, String harf){
    int sayac = 0;
    for (var i = 0; i < kelime.length; i++) {
      if (kelime[i] == harf) {
        sayac++;
      }
    }
    return sayac;
  }
}

// Parametre olarak girilen kelime ve harf için kelimenin içinde kaç tane harf olduğunu bulan fonksiyonu yazınız.