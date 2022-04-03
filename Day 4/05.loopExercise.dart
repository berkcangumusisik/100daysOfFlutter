void main(List<String> args) {
  //CEVAP 1
  print("******************* 1. CEVAP ****************");
  double number1 = 10, number2 = 20, number3 = 30;
  print(
      "$number1, $number2 ve $number3 sayılarının ortalaması ${(number1 + number2 + number3) / 3} ");

  //CEVAP 2
  print("******************* 2. CEVAP ****************");
  int kenar1 = 6, kenar2 = 6, kenar3 = 6;
  if ((kenar1 == kenar2) && (kenar1 == kenar3)) {
    print("Kenarlarını girdiğiniz üçgen eşkenardır");
  } else if ((kenar1 != kenar2) && (kenar1 != kenar3) && (kenar2 != kenar3)) {
    print("Kenarlarını girdiğiniz üçgen çeşitkenardır");
  } else {
    print("Kenarlarını girdiğiniz üçgen ikizkenardır");
  }

  //CEVAP 3
  print("******************* 3. CEVAP ****************");
  var vize = 80;
  var finalExam = 90;
  var ortalama = vize * 0.4 + finalExam * 0.6;
  if (ortalama > 60) {
    print("Tebrikler, $ortalama ile bu dersi geçtiniz");
  } else {
    print("Maalesef, $ortalama ile bu dersi geçtiniz");
  }

  //CEVAP 4
  print("******************* 4. CEVAP ****************");
  for (int i = 1; i <= 5; i++) {
    print("$i.inci döngüde ismim : Berkcan Gümüşışık");
  }
  int kontrol = 0;
  while (kontrol < 5) {
    print("${kontrol + 1}.inci döngüde ismim : Berkcan Gümüşışık");
    kontrol++;
  }
  int kontrol1 = 0;
  do {
    print("${kontrol1 + 1}.inci döngüde ismim : Berkcan Gümüşışık ");
    kontrol1++;
  } while (kontrol1 < 5);
  print("******************* 5. CEVAP ****************");
  //CEVAP 5
  for (var i = 1; i < 100; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("15e tam bölünebilen $i nin karesi =  ${i * i}");
    }
  }

  //CEVAP 6
  print("******************* 6. CEVAP ****************");
  int sayi = 6;
  int sonuc = 1;
  int sayac = 1;

  while (sayac <= sayi) {
    sonuc = sonuc * sayac;
    sayac++;
  }

  print("$sayi sayısının faktoriyeli : $sonuc");
}
/**
 * SORU 1 : 3 tane double değişken olusturup bunların ortalamasını yazdıran programı yazınız
 * SORU 2 : Kenarlarını girdiğiniz üçgenin çeşidini yazdıran programı yazınız.
 * SORU 3 : Vize ve final notlarını alıp dersi geçip geçmediğini bulan programı yazınız
 * (geçme notu alt değeri = 50, vizenin %40 finalin %60ı alınır.)
 * 
 * SORU 4: Kendi adınızı ekrana 5 kere yazdıran uygulamayı tüm döngü ifadeleriyle yazınız.
 * SORU 5: 1'den 100'e kadar olan ve 15 ile tam bölünen sayıların karelerini ekrana yazdırınız. 
 * SORU 6: Tanımlanan int bir sayının faktoriyelini bulan uygulamayı yazınız.
 */
