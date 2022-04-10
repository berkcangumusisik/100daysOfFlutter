/**
 * Daire alanını hesaplayan fonksiyon yazınız. Pi sayısı opsiyonel olmalıdır. 
 * Eğer pi sayısı verilmediyse değeri 3.14 olmalıdır.
 */
void main(List<String> args) {
  double alan1 = daireAlani(2);
  print("1. Alan : $alan1");
  double alan2 = daireAlani(2,3);
  print("2. Alan : $alan2");
}

double daireAlani(double yaricap, [double pi = 3.14]) {
  return pi * yaricap * yaricap;
}
