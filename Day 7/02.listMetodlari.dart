void main(List<String> args) {
  List<int> sayilar = [10, 5, 4, 3, 11, 2, 9];
  if (sayilar.isNotEmpty) {
    print(sayilar.first); // dizinin ilk elemanını verir.
    print(sayilar.last); // dizinin son elemanını verir.
  }
  print("Boş mu : " +
      sayilar.isEmpty.toString()); // dizinin boş olup olmadığını verir.
  print("Eleman sayısı : ${sayilar.length}");
  print("Listenin tersi : ${sayilar.reversed}"); // Listeyi terse çevirir.
  sayilar.remove(3); // belli elemanı silmeyi sağlar.
  print(sayilar);
  sayilar.removeAt(1); //Belli indexi silmeyi sağlar.
  print(sayilar);
  //sayilar.clear(); tüm listeyi siler
  if (sayilar.contains(9)) {
    print("Listede 9 var");
  }else{
    print("Listede 9 yok");
  }
  print(sayilar);
  print(sayilar.elementAt(1));
  sayilar.shuffle();
  print(sayilar);
}
// contains() => belli elemanın varlığını kontrol eder.