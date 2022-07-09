void main() {
  // Müşterinin adını tut
  // Müşterinin parasını öğren
  // Müşteriye Merhaba diyip parasını söyle
  // Bizim Bankaya geldiği için parasına +5 TL ekle.
  // ya acaba 10 yapabilir miyiz?

  print("Merhaba" + " " + '${25 + 5}');
  int userMoney = 25;
  String userName = "Berkcan";
  userMoney = userMoney + 5;

  print("Merhaba $userName $userMoney");

  print("----------------");
  userMoney = userMoney - 10;
  print("Paranız Değer Kaybetti : $userMoney");

  userMoney += 5;

  userMoney = userMoney ~/
      2; //Tam sayıyı normalde böldüğümüz zaman ondalıklı sayı olması gerekir bu yüzden hata verir. ~ işareti kullanarak / yaparsak tam bölme yapar ve alt değeri atar.

  double ahmetMoney = 15.2; // Ondalıklı sayıları tutmayı sağlar.

  ahmetMoney /= 2;
  print("Ahmet Bey paranızın üstü : $ahmetMoney");

  //Yeni bir user oluştur.
  // yeni bir para ver.
  // Bu parayı 20'ye böl ve ekranda göster.
  String username = "Ayşe";
  int money2 = 200;
  money2 = money2 ~/ 20;
  print("Merhaba $username $money2");
}
