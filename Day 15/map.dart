void main() {
  //Müşteri geldi adı Ahmet parası 20 olsun

  Map<String, int> users = {
    "Ahmet": 20,
    "Mehmet": 30,
  };

  print("Ahmet'in parası ${users['Ahmet']}");

  //Müşteri elinde kimler var diye sorsun
  for (var item in users.keys) {
    print('${item} - ${users[item]}');
  }

  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }

  print('----------------');
  // benim bankaymı. müşterilerimin birden fazla hesabı olabilir.
  // Ahmet bey 3 hesabı var sırasıyla 100, 300 ,200
  // mehmet bey 2 hesabı var 30 50
  // veli bey 1 hesap 30

  // adamların hesaplarini kontrol et herhangi bir hesapta 150 tlden fazla olan varsa krediniz hazır de

  Map<String, List<int>> bgBank = {
    "Ahmet": [100, 200, 300]
  };
  bgBank["Mehmet"] = [30, 50];
  bgBank["Veli"] = [30];
  for (var item in bgBank.keys) {
    // Bankanın tüm elemanları
    for (var money in bgBank[item]!) {
      //User hesapları dolaşılır.
      if (money > 150) {
        print("Krediniz hazır");
        break;
      }
    }
  }

  // bankadi musterilin hesaplarinin toplam mevlasini merak ediyorum

  for (var name in bgBank.keys) {
    //bgBank[item]!-> musterinin hesaplari demek
    int result = 0;
    for (var money in bgBank[name]!) {
      result = result + money;
    }

    print('$name senin toplam paran -> $result');
  }
}

/**
 * MAP YAPISI
 * Sırasız bir şekilde elemanları key - value şeklinde saklar.
 * Herhangi bir veri türü saklanabilir ama önemli olan nokta key değerinin eşsiz(tekil) olması gerekir.
 * Sabit uzunlukta değildir.
 * Yapı olarak sözlüğe benzer
 * Map<keyVeriTürü, valueVeriTürü> değişken = {}; şeklinde tanımlanır.
 */