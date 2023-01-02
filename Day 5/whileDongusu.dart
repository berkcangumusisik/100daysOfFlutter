void main(List<String> args) {
  var sayac = 1;
  while (sayac < 4) {
    print(sayac);
    sayac++;
  }
  print("------------------");
  var sayac2 = 1;
  do {
    print(sayac2);
    sayac2++;
  } while (sayac2 < 4);
}

/*
While Döngüsü
- sonu belli değildir.
while(şart){
  //Kod bloğu
}

Do while
- Koşul doğru ya da yanlış olsa en az 1 kez çalışır.
do{
  //Çalışacak blok
}while(koşul);
*/