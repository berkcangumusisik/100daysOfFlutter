void main(List<String> args) {
  int yas = 22;
  double ortalama = 5.6;
  print(yas);

  //Bir öğrencinin adını, yaşını, boyunu ve adının baş harfinin tutulduğu bir değişen oluşturunuz.
  var ogrenciAdi = "Berkcan";
  var ogrenciYasi = 22;
  var ogrenciBoy = 1.65;
  var ogrenciBasHarfi = "B";

  print(ogrenciAdi);
  print(ogrenciYasi);
  print(ogrenciBoy);
  print(ogrenciBasHarfi);

  // Bir şirketin ürünlerinin bilgilerinin tutulduğu ürünler tablosunu temsil eden değişkenleri oluşturunuz.
  int urunId = 3416;
  String urunAdi = "Kol saati";
  int urunAdet = 100;
  double urunFiyat = 149.99;
  String urunTedarikcisi = "rolex";

  print("Ürün ID : $urunId");
  print("Ürün Adı : " + urunAdi);
  print("Ürün Adet : $urunAdet");
  print("Ürün Fiyat : $urunFiyat");
  print("Ürün Tedarikçisi : " + urunTedarikcisi);

  int a = 10;
  var b = 20;
  print("a + b = ${a + b}");

  int numara;
  numara = 9;
  numara += 9;
  print(numara);

  int sayi1= 50;
  double sayi2 = 52.65;
  print("Aklımdan tuttugum birinci sayi : " + sayi1.toString() + " ikinci sayi :" + sayi2.toString());
  print("Aklımdan tuttugum birinci sayi $sayi1 ikinci sayi: $sayi2");

  double en = 10;
  double boy = 12;
  print("Eni $en boyu $boy olan dikdörtgenin alanı : ${en*boy}");
  
}


/* VERI TİPLERİ VE DEĞİŞKEN KAVRAMI
DEGİŞKEN : Programlama dilinde işlediğimiz verileri bilgisayarın hafızasında tutmak için yapmış olduğumuz tanımlamalardır.
* Tüm veri tipleri Object yani nesneleridir. Bu yüzden varsayılan değerleri null'dir.
* var ile tür belirtmeden değişken olutşurabiliriz.
* var degiskenAdi = degiskenDegeri; şeklinde tanımlanır. 
Tutulan verinin türüne göre farklı veri tipleri vardır. 
- Number
  - int tamsayılar
  - double ondalıklı sayılar
- String metinsel ifadeler
- Boolean true/false
Tür belirterek değişken tanımlama:
- degiskenTuru degiskenAdi = degiskenDegeri; 
DEĞİŞKEN ADLANDIRMA KURALLARI
- Büyük küçük harf duyarlıdır.(Case sensitive)
- Rakamla başlayamaz.
- Özel karakterler kullanılmaz.
- camelCase adlandırma yapılabilir.
- Türkçe karakterler kullanılmaz.
- Boşluk kullanılmaz.
INTERPOLITION
String ifade içine $ ifadesi kullanılarak çıktıya değişken eklenir. Mesela string ve sayıyı normal + işareti ile birleştiremezken $ ifadesiyle değişken yazıdırlabilir.
*/