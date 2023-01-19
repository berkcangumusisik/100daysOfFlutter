/**
 * late ile değişkenin null olup olmadığını kontrol etmemize gerek kalmaz.
 * late ile değişken tanımlanırken değer atanmaz.
 * Değişkenin değeri kullanılmaya çalışıldığında değer atanır.
 */

void main(List<String> args) {
  late String isim;
  isim = "Ahmet";
  print(isim);
  print(isim.length);
}
