void main(List<String> args) {
  for (var i = 0; i < 5; i++) {
    print(i);
  }

  print("--------------------");

  for (var i = 0; i < 10; i++) {
    print("Berkcan Gümüşışık");
  }

  print("--------------------");
  for (var i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      print("$i");
    }
  }

  print("--------------------");
  var dizi = [10, 20, 30];
  for (var deger in dizi) {
    print("Sonuç : $deger");
  }

  print("--------------------");
  List isimListesi = ["Berkcan", "Şevval", "Nurana", "Mete"];
  for (var isim in isimListesi) {
    print(isim);
  }

  print("--------------------");
  for (var i = 0; i < isimListesi.length; i++) {
    print("Okunan eleman : " + isimListesi[i]);
  }
}

/**
 * Döngüler belirli kodları tekrar çalıştırmak amaçlı yapıdadır.
 * FOR DÖNGÜSÜ
 * Sınırı belli olan döngülerdir.
 for(var baslangic;bitiş Şartı; artış){
   //Tekrarlanacak kod yapısı
 }
 * Dizilerde veri elemanlarını dolaşmak için kullanılır.
 for(var veri in veriKümesi){
   //Tekrarlanacak kod yapısı
 }
 */