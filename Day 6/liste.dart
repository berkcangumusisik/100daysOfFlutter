void main(List<String> args) {
  var liste = [1, 2, 3, 4, 5];
  print(liste);

  var meyveler = <String>[];
  meyveler.add("Elma");
  meyveler.add("Armut");
  meyveler.add("Muz");
  meyveler.add("Kivi");
  print(meyveler);

  meyveler[2] = "Kiraz";
  print(meyveler);

  meyveler.insert(2, "Muz");
  print(meyveler);

  meyveler.remove("Elma");
  print(meyveler);

  meyveler.sort();
  print(meyveler);

  print(meyveler.length);
  print("Boş mu? ${meyveler.isEmpty}");

  meyveler.removeAt(2);
  print(meyveler);

  print(meyveler.contains("Kiraz"));

  meyveler.reversed;
  print(meyveler);

  for (var i = 0; i < meyveler.length; i++) {
    print(meyveler[i]);
  }

  print("-----------------------");
  for (var meyve in meyveler) {
    print(meyve);
  }
  meyveler.clear();
}

/* 
Liste
* Aynı türden birden fazla veri tutmak için kullanılır.
* Listelerin elemanlarına index numarası ile erişilir.
* İndex numarası 0'dan başlar.
* Veri eklediğimizde index numarası otomatik olarak artar.
* var degiskenAdi = [veri1, veri2, veri3, ...];
* var degiskenAdi = <VeriTuru>();

* .add() metodu ile listenin sonuna veri eklenir.
* .insert() metodu ile listenin istediğimiz index numarasına veri eklenir.
* .remove() metodu ile listenin istediğimiz index numarasındaki veri silinir.
* Güncelleme işlemleri için [] operatörü kullanılır.
* sort() metodu ile listenin elemanları alfabetik sıraya göre sıralanır.
* length özelliği ile listenin eleman sayısı öğrenilir.
* isEmpty özelliği ile listenin boş olup olmadığı öğrenilir.
* removeAt() metodu ile listenin istediğimiz index numarasındaki veri silinir.
* contains() metodu ile listenin istediğimiz verinin olup olmadığı öğrenilir.
* clear() metodu ile listenin tüm elemanları silinir.
* reversed özelliği ile listenin elemanları ters çevrilir.
*/