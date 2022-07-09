void main() {
  int money = 15;
  bool isCustomerRich = true; //Doğru ya da yanlış değerleri bool ile tutuyoruz.

  if (money > 10) {
    print("Sen zenginsin abi");
  } else {
    print("Zengin değilsin");
  }

  money -= 10;

  if (money > 10) {
    print("Sen çok zenginsin abi");
  } else {
    print("Zengin değilsin");
  }

  //Müşteri bankaya gelir 10 TL'si vardır. Sorgu sonucunda 20 TL alınır. Eğer kalan para sıfırdan küçükse bankadan çıkarılır.

  int newCustomerMoney = 10;
  const int bankingCost = 5;
  const int bankingCostGeneral = 20;
  if (newCustomerMoney > 5) {
    print("Hoş geldiniz");
    newCustomerMoney = newCustomerMoney - bankingCost;
  } else if (newCustomerMoney > 0) {
    print("Hoş geldiniz");
  } else {
    print("Beyefendi kredinizi ödeyin");
  }

  // Bir mağazaya isim verileceğini düşünelim. Verilecek isimler toplanır. Örnek isimler : ahmet, mehmet, veli ve kx'tir. Mağaza derki ben sadece karakter uzunluğu 2 ve altı olanları görmek istiyorum. Bu koşula uyan isimleri yyan yana ve aralarında boşluklu bir şekilde görmek istiyorum. Buna uygun kod bloğunu yazınız.

  final String ahmetCompany = "Ahmet";
  final String mehmetCompany = "Mehmet";
  final String veliCompany = "Veli";
  final String kxCompany = "KX";
  const int companyLenght = 2;
  String results = "";
  if (ahmetCompany.length > companyLenght) {
    results += ahmetCompany;
  }
  if (mehmetCompany.length > companyLenght) {
    results += mehmetCompany;
  }
  if (veliCompany.length > companyLenght) {
    results += veliCompany;
  }
  if (kxCompany.length > companyLenght) {
    results += kxCompany;
  }

  if (results == 0) {
    print("Patron böyle bir mağaza bulamadık");
  } else {
    print(results);
  }
}

/**
if(koşul 1){
  // Koşul 1 doğruysa çalışacak kodlar.
}else if(koşul 2){
  // Koşul 2 doğruysa çalışacak kodlar.
}else{
  //Koşul 1 ve Koşul 2 doğru değilse çalışacak kodlar.
}
 */