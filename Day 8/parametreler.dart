void main(List<String> args) {
  int sonuc = topla(5, 6);
  print(sonuc);

  sonuc = topla2(5, 6, sayi3: 7);
  print(sonuc);
}

int topla(int sayi1, int sayi2, [int sayi3 = 0]) {
  return sayi1 + sayi2 + sayi3;
}

int topla2(int sayi1, int sayi2, {int sayi3 = 0}) {
  return sayi1 + sayi2 + sayi3;
}


/*
- Eğer [] kullanılırsa parametre zorunlu değildir.
- Eğer {} kullanılırsa parametre zorunlu değildir. Parametrelerin sırası önemli değildir.
- = ile varsayılan değer verilebilir.
*/