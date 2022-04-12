void main(List<String> args) {
  List<int> numbers = [1, 23, 32, 47, 59, 100, 18, 54];
  List<int> tekSayilar = [];
  List<int> ciftSayilar = [];
  for (var number in numbers) {
    int sonuc = number % 2;
    if (sonuc == 0) {
      ciftSayilar.add(number);
    } else {
      tekSayilar.add(number);
    }
  }
  print(tekSayilar);
  print(ciftSayilar);
}