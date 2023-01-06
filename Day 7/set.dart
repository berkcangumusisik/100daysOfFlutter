void main(List<String> args) {
  Set<String> meyveler = <String>{};
  meyveler.add("Elma");
  meyveler.add("Armut");
  meyveler.add("Muz");
  meyveler.add("Kivi");
  
  for (var meyve in meyveler) {
    print(meyve);
  }

  bool sonuc = meyveler.contains("Elma");
  print(sonuc);

  print(meyveler.length);
  print(meyveler.isEmpty);
  

}

/*
Set 
- Listelerden en önemli farkı, içerisindeki elemanların sırasız olmasıdır. Sırasız olması, içerisindeki elemanların index numarasına erişilememesine neden olur.
- Setler {} kullanılarak oluşturulur.
- Setlerde aynı elemandan birden fazla olamaz.
- Listelerde kullanılan metotlar setlerde de kullanılabilir.
- Index olmadığı için .contains() metodu ile elemanın sette olup olmadığı kontrol edilebilir.
*/