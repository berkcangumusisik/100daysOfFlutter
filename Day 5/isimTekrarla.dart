import 'dart:io';

void main(List<String> args) {
  print("İsim giriniz : ");
  String? isim = stdin.readLineSync();

  print("Tekrar sayısını giriniz :");
  int? tekrar = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < tekrar; i++) {
    print(isim);
  }
}