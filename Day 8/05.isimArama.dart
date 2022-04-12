import 'dart:io';

void main(List<String> args) {
  List<String> isimler = [];
  isimler.add("Berkcan");
  isimler.add("Şevval");
  isimler.add("Nurana");
  isimler.add("Mete");
  isimler.add("Enes");

  print("Aramak istediğiniz ismi giriniz : ");
  String isim = stdin.readLineSync()!;
  for (var i in isimler) {
    if(i == isim){
      print("İsim Mevcut");
      break;
    }
  }

}