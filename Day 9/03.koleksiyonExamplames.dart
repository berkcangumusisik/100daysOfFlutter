import 'dart:math';

void main(List<String> args) {
  /* Şehirleri tutan liste oluşturunuz ve 4 il ekleyip sırasıyla yazdırınız. */
  var iller = [];
  iller.add("Ankara");
  iller.add("İstanbul");
  iller.add("İzmir");
  iller.add("Sivas");
  for (var il in iller) {
    print(il);
  }

  print("-------------------------");
  /** Keyleri string, değerleri dynamic olan bir map oluşturunuz.
   *  Bu map yapısında işlemci çekirdek sayısını, RAM ve SSD olup olmadığını tutarak ekrana yazdırınız. */
   Map<String, dynamic> bilgiler= {
     "İşlemci Çekirdek Sayısı": 16,
     "Ram Miktarı": 16,
     "SSD Var Mı? " : true 
   };
   print("Bilgisayar bilgileri ");
   for (var bilgi in bilgiler.entries) {
     print("${bilgi.key} : {bilgi.value}");
   }

   print("-------------------------");
   /**
    * Her bir elemanında keyleri string, value değeri dynamic olan bir liste oluşturun.
    * Bu listenin her elemanı il adı, ilçe sayısı ve plaka kodunu tutsun.
    * Sonrasında bu listeyi ekrana yazdırınız.
    */

    List<Map<String, dynamic>> iller2 = <Map<String,dynamic>>[];
    Map<String, dynamic> sehir1 = Map<String, dynamic>();
    Map<String, dynamic> sehir2 = <String, dynamic>{};
    var sehir3 = <String, dynamic>{};

    sehir1["İl"] = "Ankara";
    sehir1["İlçe"] = 10;
    sehir1["Plaka"] = 6;

    sehir2["İl"] = "Bursa";
    sehir2["İlçe"] = 6;
    sehir2["Plaka"] = 16;

    sehir3["İl"] = "İstanbul";
    sehir3["İlçe"] = 16;
    sehir3["Plaka"] = 34;

    iller2.add(sehir1);
    iller2.add(sehir2);
    iller2.add(sehir3);
    iller2.add({"İl":"İzmir", "İlçe":9,"Plaka":35});
    for (int i = 0; i < iller2.length; i++) {
      var sehir = iller2[i];
      print("Listenin ${i+1}. elemanında bulunan şehrin adı :${sehir['İl']} ilçe sayısı:${sehir['İlçe']} Plaka Kodu:${sehir['Plaka']}");
    }


    /**
     * 5 elemanlı iki farklı liste oluşturun.
     * Elemanları 0-50 arasında rastgele oluşsun.
     * Bu elemanları tek bir listeye aktarın.
     * Oluşan son listenin karelerini tutan set yapısı oluşturup ekrana yazdırınız.
     */
    List<int> liste1 = List.filled(5, 0);
    var liste2 = List<int>.filled(5, 0);
    List<int> sonListe = <int>[];
    var setYapisi = <int>{};
    for (var i = 0; i < 5; i++) {
       liste1[i] = Random().nextInt(50);
       liste2[i] = Random().nextInt(50);
    }
    sonListe = [...liste1, ...liste2];
    print(sonListe);
    for (var gecici in sonListe) {
      setYapisi.add(gecici * gecici);
    }
    print(setYapisi);

 }