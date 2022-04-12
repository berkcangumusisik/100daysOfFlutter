void main(List<String> args) {
  List<int> sayilar = [1, 2, 3, 4, 5];
  for (var i = 0; i < sayilar.length; i++) {
    int sonuc = sayilar[i] * 2;
    sayilar[i] = sonuc;
  }

  for (var number in sayilar) {
    print(number);
  }
}

/**
 * 1'den 5'e kadar sayılar bulunan liste elemanlarını 2 ile çarparak yeni bir liste oluşturunuz.
 */