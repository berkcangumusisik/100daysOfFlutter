void main(List<String> args) {
  for (var i = 0; i < 5; i++) {
    print(i);
  }
  print("---------------------");
  for (var deger in [10,20,30]) {
    print(deger);
  }

  print("---------------");

  // 10 ile 20 arasında 5 artarak ilerlesin
  for (var i = 10; i < 21; i+=5) {
    print(i);
  }

  print("---------------");

  for (var i = 0; i < 5; i++) {
    if(i % 2 == 0){
      print(i);
    }
  }
}

/*
* Döngüler belirli kodları tekrarlı çalıştırmak için kullanılır.
for Döngüsü
* Sınırı bellidir.
for(var baslangic; bitisSarti; i++){
  // Tekrarlanan kod yapısı
}

for(var veri in veriKumesi){
  // Tekrarlanan kod yapısı
}
*/