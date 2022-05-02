void main(List<String> args) {
  print(Asinifi.degisken);
  Asinifi.degisken = 100;
  print(Asinifi.degisken);
  print(Asinifi.oran);
  Asinifi.metod();
}

class Asinifi {
  static int degisken = 10;
  static final double oran = 10.45;
  static void metod() {
    print("Merhaba");
  }
}


/**
 * Bir değişkenin ya da metodun, bulunduğu sınıftan nesne oluşturmaya gerek kalmadan erişmei sağlar.
 */