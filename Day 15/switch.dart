void main() {
  final int classDegree = 2;
  bool isSucess = true;
  // 2 ise ekrana bravo
  // 1 ise olur
  // 0 ise yeterli
  // Diğer durumlarda başarısız.
  switch (classDegree) {
    case 0:
      print("Yeterli");
      isSucess = true;
      break;
    case 1:
      print("Olur");
      isSucess = true;
      break;
    case 2:
      print("Bravo");
      isSucess = true;
      break;
    default:
      print("Başarısız");
      isSucess = false;
  }

  print("Çocuğunuzun sonucu : $isSucess");

  //Mağazaya gelen isimlerden ismi Berkcan olursa ekrana bravo yazdır.
  String name = "Berkcan";
  const String specialUser1 = "Berkcan";
  const String specialUser2 = "Veli";

  switch (name) {
    case "Berkcan":
    case "Veli":
      print("Bravo");
      break;
    default:
      print("Sorunlu");
  }

  switch (name) {
    case specialUser1:
    case specialUser2:
      print("Bravo");
      break;
    default:
      print("Sorunlu");
  }
}
// Ard arda if -else if kullanmak yerine genellikle switch yapısı tercih edilir. Her case sonuna break konularak tüm kodu taramadan ilgili case bloğuna gelince kodu çalıştırıp durması sağlanır.