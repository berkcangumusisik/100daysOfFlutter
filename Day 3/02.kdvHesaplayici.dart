import 'dart:io';

void main(List<String> args) {
  //Fiyatı girilen ürüne %18 kdv ekleyerek son fiyatı hesaplayınız.
  print("Ürün fiyatını giriniz");
  int? price = int.parse(stdin.readLineSync()!);

  double unitPrice = (price * 18) / 100  + price;
  print("Ürünün son fiyatı : $unitPrice");
}