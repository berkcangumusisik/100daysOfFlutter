import 'veriTabaniIslemleri.dart';

/**
 * Bir sınıftaki değişken ya da metotu bazen erişime kapatmak isteyebiliriz.
 * _ ile erişime kapatılı.
 */
void main(List<String> args) {
  VeriTabaniIslemleri db = VeriTabaniIslemleri();
  bool sonuc = db.baglan();
  if (sonuc) {
    print("Bağlandı");
  } else {
    print("Bağlanamadı");
  }
}

