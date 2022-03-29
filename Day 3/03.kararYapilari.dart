void main(List<String> args) {
  int s1 = 50;
  int s2 = 40;
  print(s1 == s2);
  print(s1 == s2);
  
  //ÖRNEK 1
  int yas = 22;
  if(yas > 18){
    print("Reşitsiniz");
  }else{
    print("Reşit değilsiniz.");
  }
  print("**************************************************");
  //ÖRNEK 2
  String kullaniciAdi = "berkcan";
  int sifre = 12345;
  if(sifre == 12345 && kullaniciAdi == "berkcan"){
    print("Hoş Geldiniz");
  }else{
    print("Hatalı giriş");
  }
  print("**************************************************");
  //ÖRNEK 3
  int sayi1 = 12;
  num sayi2 = 11 ;

  if(sayi1 > sayi2){
    print("$sayi1 sayısı $sayi2 sayısından büyüktür");
  }else{
    print("$sayi1 sayısı $sayi2 sayısından küçüktür");
  }

  print("**************************************************");


  int notDegeri = 150; 

  if(notDegeri >= 90 && notDegeri<=100){
    print("Notunuz : AA");
  }else if(notDegeri >= 80 && notDegeri < 90 ){
    print("Notunuz : BA");
  }else if(notDegeri >= 70 && notDegeri < 80){
    print("Notunuz : BB");
  }else if(notDegeri >= 60 && notDegeri < 70 ){
    print("Notunuz : CB");
  }else if(notDegeri >= 50 && notDegeri < 60){
    print("Notunuz : CC");
  }else if(notDegeri >= 0 && notDegeri < 50 ){
     print("Notunuz çok düşük yazmaya tenezzül bile etmedik");
  }else{
    print("Hatalı veya eksik giriş");
  }
}

/**
Karşılaştırma Operatörleri
 * == eşittir
 * != eşit değildir
 * > büyüktür
 * < küçüktür
 * >= büyük eşittir
 * <= küçük eşittir
Mantıksal Operatörler
  * && AND => Her iki koşulun sağlanması durumunda true olur.
  * || OR => İki koşuldan biri doğruysa true olur.
  * ! NOT => var olan durumu tersine dönüştürür.
if else else if
if(saglanması gereken şart){
  verilen şart sağlanmışsa çalısacak blok
}else if(yukarıdaki şart doğru değilse çalışır ve koşulumuz yazılır.){
  verilen şart sağlanmamışsa çalışacak blok
}else if(yukarıdaki şart doğru değilse çalışır ve koşulumuz yazılır.){
  verilen şart sağlanmamışsa çalışacak blok
}else{
  verilen şart sağlanmamışsa çalışacak blok
}
 */