void main(List<String> args) {
  List<int> liste = [1, 2, 3];
  liste.forEach((element) {
    //element isimli değişken oluşturulur.
    print(element);
  });

  print("-------------------------");
  liste.forEach(callback);
  print("-------------------------");
  kendiForEachYapim(liste,(int deger){
    print(deger);
  });
}

void callback(int element) {
  print(element);
}

void kendiForEachYapim(List<int> liste, Function callb) {
  for (var i = 0; i < liste.length; i++) {
    callback(liste[i]);
  }
}
/**
 * Higher order function
 * Bir fonksiyonu parametre olarak alan veya geriye fonksiyon döndüren fonksiyonlardır.
 * Tabi ikisi aynı anda kullanılabilir.
 */