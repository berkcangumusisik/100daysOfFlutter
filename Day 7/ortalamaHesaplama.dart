void main(List<String> args) {
  var sayilar = <int>[];
  sayilar.add(20);
  sayilar.add(100);
  sayilar.add(200);

  var toplam = 0;

  for (var sayi in sayilar) {
    toplam += sayi;
  }

  print(toplam / sayilar.length);
}
