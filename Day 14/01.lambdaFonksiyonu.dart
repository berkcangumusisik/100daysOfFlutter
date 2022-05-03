void main(List<String> args) {
  Function fonksiyon = (int a, int b) {
    int toplam = a + b;
    print(toplam);
  };
  fonksiyon(5, 6);

  var f2 = (int s) => s * 2;
  var f3 = (int s2) {
    return s2 * 2;
  };
  print(f2(5));
  print(f3(6));
}

//Normal bir fonksiyon
void sayilariTopla(int a, int b) {
  int toplam = a + b;
  print(toplam);
}
/**
 * Lambda ismi olmayan fonksiyonlardır.
 * Dartta her fonksiyon bir nesnedir.
 */