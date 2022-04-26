/**
 * Nesneye yönelimli programlamaya giriş

 * Sınıf : Kendi veri türlerimiz veya soyut olan taslaklara denir. Kendi içinde değişkenlere ve methodlara sahiptir.
 * Nesne : Olusturulan soyut ve taslak olan sınıflardan üretilen örneklere denir. 
 * Sınıf eğer bir uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumandadır.
 * 
 */

void main(List<String> args) {
  int sayi = 5;
  Ogrenci berkcan = Ogrenci();
  berkcan.ogrenciAd ="Berkcan Gümüşışık";
  berkcan.ogrenciNo = 526;
  berkcan.aktifMi = true;
}

class Ogrenci{
  int ogrenciNo = 1;
  String? ogrenciAd ="Berkcam";
  bool? aktifMi = true;

  void dersCalis(){
    print("Öğrenci ders çalışıyor");
  }
}