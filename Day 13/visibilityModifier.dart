void main(List<String> args) {
  VeritabaniIslemleri veritabaniIslemleri = VeritabaniIslemleri();
  veritabaniIslemleri.baglan();
}

class VeritabaniIslemleri {
  String username = "berkcan";
  String sifre = "123456";
  bool baglan(){
    if (username == "berkcan" && sifre == "123456") {
      print("Bağlantı Başarılı");
      return true;
    } else {
      print("Bağlantı Başarısız");
      return false;
    }
  }
}

/**
 * Erişim Belirleyiciler
 * public => varsayılan olarak her yerden erişilebilir
 * private => sadece kendi sınıfı içerisinden erişilebilir. _ ile başlar.
 */