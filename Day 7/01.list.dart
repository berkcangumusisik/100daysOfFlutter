void main(List<String> args) {
  List<String> meyveler = [];
  meyveler.add("Çilek");
  meyveler.add("Muz");
  meyveler.add("Elma");
  print(meyveler);

  List<int> sayilar = [];
  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(3);
  sayilar.add(4);
  sayilar.add(5);
  print(sayilar);
  print(sayilar.length);

  List<int> sayilar2 = [1,2,3];
  sayilar2.add(55);
  print(sayilar2);

  List<int> sayilar3 = List.filled(10, 10, growable:true);
  sayilar3.add(55);
  print(sayilar3);

  List<int> sayilar4 = List.empty(growable: true);
  List<int> sayilar5 = [];
  sayilar5.add(5);
  sayilar4.add(10);
  print(sayilar5);
  print(sayilar4);

  sayilar4.insert(1, 10);
  print(sayilar4);
}

/**
 * Aynı türdeki verileri bir arada tutar.
 * İndeks numarası 0'dan başlar.
 * Veri eklendikçe boyut otomatik olarak artar.
 * .lenght => dizinin uzunluğunu verir.
 * List.filled(dizi uzunluğu, eleman, eleman eklenebilir mi)
 * .insert(index, eleman) => istenen indexe veri eklemeyi sağlar.
 */