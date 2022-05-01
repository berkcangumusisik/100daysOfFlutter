void main(List<String> args) {
  Asker ali = Asker("Ali", 30);
  Er ahmet = Er("Ahmet", 20);
  ahmet.memleketDegistir("Bursa");
  ahmet.selamla();
}

class Asker {
  String ad = "Varsayılan";
  int yas = 0;
  String memleket = "Ankara";
  Asker(this.ad, this.yas) {
    print("Asker sınıfının kurucusu çalıştı.");
  }
  void selamla() {
    print("Merhaba adım $ad ve yasım $yas");
  }
}

class Er extends Asker {
  Er(String ad, int yas) : super(ad, yas) {
    print("Er sınıfının kurucusu çalıştı.");
  }
  void memleketDegistir(String yeniMemleket) {
    super.memleket = yeniMemleket;
  }
}

/**
 * Bir sınıfı extend ettiğimizde alt sınıf nesnesi olusturulmadan önce üst sınıfın kurucusu çalısır.
 * super anahtar kelimesi ile üst sınıfın alanlarına erişip düzenleme yapabiliriz.
 */