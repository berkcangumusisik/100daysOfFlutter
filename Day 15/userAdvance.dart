void main() {
  var userName =
      "Berkcan"; //var anahtar kelimesiyle birlikte veri türünü kendisi otomatik olarak belirlemektedir.

  final int bankMoney =
      100; // final anahtar kelimesiyle birlikte sabitler oluşturulur.İçerisine bir kere veri atıldığında bir daha değiştiremeyeceğiniz yapılardır.
  const int data = 15;

  // Bank name = "BG BANK"
  // bank user1 = "bank1müşteri"
  // bank1 müşteriye kimse dokunamaz.
  // bank user1 in parasi 100.00
  // yeni bir müşteri gelecek adı bank2müşteri
  // Yeni bankaya gelende bu bank user1 parasını çıkarıp ekranda gösterelim

  const String bankNameSpecial = "BG Bank";
  const String user1 = "Bank 1 müşteri";
  const double user1Money = 100.00;
  const String user2 = "Bank 2 müşteri";
  int user2Money = 500;

  user2Money = user2Money - user1Money.toInt();
  print("User 2 money $user2Money");

  //Benim bir halı saham var 100 kapasitesi var.
  // saat 10'da 20 kişilik bir grup var ve maç yapacak. 20 kişi kesin gelecek.
  // Saat 10'da müşteri2 gelip bana 50 kişilik yer ayırtacak.
  // Halı sahada kaç kapasite kalmıştır.

  const int kapasite = 100;
  const int musteri1 = 20;
  const int musteri2 = 50;
  int sum = musteri2 + musteri1;
  print("Kalan kapasite ${kapasite - sum}");
}

/**
 * final ve const arasındaki farka baktığımızda final uygulama çalıştığında o an çalışan değeri alır ve değeri atar. Const ile proje başlarken kod compile edildiği anda değiştirilmez.
 */