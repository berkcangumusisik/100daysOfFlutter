/**
 MAP YAPISI
 * Sırasız bir şekilde elemanları key - value şeklinde saklar.
 * Herhangi bir veri türü saklanabilir ama önemli olan nokta key değerinin eşsiz(tekil) olması gerekir.
 * Sabit uzunlukta değildir.
 * Yapı olarak sözlüğe benzer
 * Map<keyVeriTürü, valueVeriTürü> değişken = {}; şeklinde tanımlanır.
 */
void main(List<String> args) {
  Map<String, int> alanKodlari = {
    "Ankara" : 312,
    "Bursa" : 224,
    "İstanbul": 212
  };

  print(alanKodlari);
  print(alanKodlari["Ankara"]);

  Map<String, dynamic> berkcan = {
    "Soyad" : "Gümüşışık",
    "Yaş" : 23,
    "Bekar Mı": true
  };
  print(berkcan["Yaş"]);
  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = {};

  deneme2["yaş"] = 23;
  for (var oankiAnahtar in berkcan.keys) {
    print(oankiAnahtar);
    print(berkcan[oankiAnahtar]);
  }

  for (var element in berkcan.entries) {
    print("Key : ${element.key} Değer: ${element.value}");
  }

  if(berkcan.containsKey("Yaş")){
    print("Bulunan yaş değeri : ${berkcan['Yaş']}");
  }
 
  
}