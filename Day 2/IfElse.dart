void main(List<String> args) {
  int money = 30;
  if (money > 100) {
    print("Para çok");
  } else if (money > 50) {
    print("Para yeterli");
  } else {
    print("Para az");
  }

  int newCustomerMoney = 0;
  const int bankingCost = 5;
  const int bankingCostGeneral = 10;
  if (newCustomerMoney > bankingCost) {
    print("Hoşgeldiniz");
  } else if (newCustomerMoney > 0) {
    print("Sıra alınız");
  } else {
    print("Para yatırınız");
  }

  int sayi1 = 10;
  int sayi2 = 20;

  if (sayi1 < sayi2) {
    print("$sayi1 $sayi2'den küçüktür");
  } else if (sayi1 > sayi2) {
    print("$sayi1 $sayi2'den büyüktür");
  } else {
    print("$sayi1 $sayi2'ye eşittir");
  }

  int not = 50;
  if (not >= 90 && not <= 100) {
    print("AA");
  } else if (not >= 80 && not < 90) {
    print("BA");
  } else if (not >= 70 && not < 80) {
    print("BB");
  } else if (not >= 60 && not < 70) {
    print("CB");
  } else if (not >= 50 && not < 60) {
    print("CC");
  } else if (not >= 40 && not < 50) {
    print("DC");
  } else if (not >= 30 && not < 40) {
    print("DD");
  } else if (not >= 20 && not < 30) {
    print("FD");
  } else if (not >= 0 && not < 20) {
    print("FF");
  } else {
    print("Geçersiz not");
  }

  int num1 = 10;
  int num2 = 20;
  int kucukSayi;
  kucukSayi = num1 < num2 ? num1 : num2;
  print("Küçük sayı: $kucukSayi");
}

/*
if(kosul){
   kosul true ise çalışacak kodlar
} else if(kosul){
   kosul true ise çalışacak kodlar
} else {
   kosul false ise çalışacak kodlar
}

Terary Operator
kosul ? true ise çalışacak kod : false ise çalışacak kod

*/