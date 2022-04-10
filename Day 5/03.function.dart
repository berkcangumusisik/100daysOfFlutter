void main(List<String> args) {
  cevreyiHesapla();
  int sonuc = alanHesapla(5, 10);
  print("Alan : ${sonuc}");
  int hacim = hacimHesapla(8, 9, 10);
  print("Hacim : ${hacim}");
  print("Çarpım : " + sayilariCarp(2, 6).toString());
  sehirleriYazdir("Ankara", "Berlin", "New York");
  print("");
  ulkeleriYazdir("Türkiye", "Almanya");
   print("");
  kitalariYazdir("Asya",kita3: "Amerika",kita2: "Avrupa" );
   print("");

  //print("Hacim : "+ hacmiBul(5).toString());
  print("");
  print("Hacim : "+ hacmiBul(yukseklik: 5, en: 2).toString());

}


// Parametresiz fonksiyon
cevreyiHesapla(){
  int en = 5, boy = 10;
  int cevre = (en + boy) * 2;
  print("Çevre : ${cevre}");
 

}


//Parametreli Fonksiyon
alanHesapla(int kenar1, int kenar2){
  //print("Alan  : ${kenar1 * kenar2}");
  return kenar1 * kenar2;
}

int hacimHesapla(int en, int boy, int yukseklik){
  return en * boy * yukseklik;
}

int sayilariCarp(int s1, int s2)=> s1 *s2;

void sehirleriYazdir(String sehir1, String sehir2, String sehir3) {
  print("Şehir 1 : $sehir1");
  print("Şehir 2 : $sehir2");
  print("Şehir 3 : $sehir3");
}

void ulkeleriYazdir([String? ulke1, String? ulke2, String? ulke3]) {
  if (ulke1 != null) print("Ülke 1 : $ulke1");
  if (ulke2 != null) print("Ülke 2 : $ulke2");
  if (ulke3 != null) print("Ülke 3 : $ulke3");
}

void kitalariYazdir(String kita1, {String? kita2, String? kita3}) {
  if (kita1 != null) print("Kıta 1 : $kita1");
  if (kita2 != null) print("Kıta 2 : $kita2");
  if (kita3 != null) print("Kıta 3 : $kita3");
}

//int hacmiBul(int en, [int boy=1, int yukseklik=1]) => en * boy * yukseklik;
int hacmiBul({int en=1, int boy=1, int yukseklik=1}) => en * boy * yukseklik;

/**
 FONKSİYONLAR
 * Belirli işlemleri temsil eden yapılardır.
 * Kullanma amacımız tekrarlanan kod yapılarının önüne geçmektir.
 * Kodun okunması kolaylaşır.
 dönüşTürü fonksiyonAdi(Parametre){
   //Kodlar
   return dönüşDegeri;
 }
 * Eğer köşeli parantez [] kullanırsak bu ilgili parametrelerin methoda gönderilmesi zorunluluğunu ortadan kaldırır.
 * Eğer süslü parantez {} kullanırsak burda da parametreler isteğe bağlıdır ama bu parametreleri belirtirken sıralama önemini kaybeder ve de parametreleri geçerken isimlerini vermek zorunda kalırız.
 * Ayrıca method tanımlarında parametrelere = diyerek varsayılan değerler atayabiliriz. Bu değerler sayesinde eğer kullanıcı method parametrelerini atamamışsa bu varsayılan değerler kullanılır.
 */