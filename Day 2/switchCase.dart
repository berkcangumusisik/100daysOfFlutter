void main(List<String> args) {
  String notDegeri = "BA";
  switch (notDegeri) {
    case "AA":
      print("Notunuz: 90-100");
      break;
    case "BA":
      print("Notunuz: 80-89");
      break;
    case "BB":
      print("Notunuz: 70-79");
      break;
    case "CB":
      print("Notunuz: 60-69");
      break;
    case "CC":
      print("Notunuz: 50-59");
      break;
    case "DC":
      print("Notunuz: 40-49");
      break;
    case "DD":
      print("Notunuz: 30-39");
      break;
    case "FD":
      print("Notunuz: 20-29");
      break;
    case "FF":
      print("Notunuz: 0-19");
      break;
    default:
      print("Geçersiz not");
      break;
  }

  int gun = 1;
  switch (gun) {
    case 1:
      print("Pazartesi");
      break;
    case 2:
      print("Salı");
      break;
    case 3:
      print("Çarşamba");
      break;
    case 4:
      print("Perşembe");
      break;
    case 5:
      print("Cuma");
      break;
    case 6:
      print("Cumartesi");
      break;
    case 7:
      print("Pazar");
      break;
    default:
      print("Geçersiz gün");
      break;
  }

  
}

/*
switch 
- ard arda else if kullanımı yerine kullanılır.
- her bir case sonunda break kullanılmalıdır.
- switch içinde sadece int ve String kullanılabilir.
switch (değişken) {
  case değer1:
    // kodlar
    break;
  case değer2:
    // kodlar
    break;
  default:
    // kodlar
    break;
}
*/