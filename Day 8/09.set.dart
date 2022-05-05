void main(List<String> args) {
  Set<String> isimler = Set();
  isimler.add("Berkcan");
  isimler.add("Şevval");
  isimler.add("Nurana");
  isimler.add("Mete");
  isimler.add("Enes");

  bool sonucum =isimler.remove("emre222");
  print("sonuc : "+ sonucum.toString());

  print("*********");

  

  for(String s1 in isimler){
    print("isim : $s1");
  }

  Set<int> numaralar = Set.from([1,2,3,4,2,1,5,2,1,4,1,1,1,1,]);
  List<int> ciftSayilar = [0,2,4,6,8,10,8,6,4,2,0];
  for(int s1 in numaralar){
    print("no : $s1");
  }

  numaralar.clear();
  numaralar.addAll(ciftSayilar);

  for(int s1 in numaralar){
    print("add alldan sonra no : $s1");
  }
}

/**
 * List ile hemen hemen aynı özellikleri taşır.
 * İçine eklenen veriler düzensiz rastgele yerleşir.
 * Aynı veriden tekrar kayıt edilemez
 */