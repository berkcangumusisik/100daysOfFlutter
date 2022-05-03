void main(List<String> args) {
  print("Program Başladı");
  try {
    int sayi = 100 ~/ 0;
    print(sayi);
  } on IntegerDivisionByZeroException {
    print("Bölen 0 olamaz");
  } catch (e) {
    print("Hata: $e");
  } finally {
    print("Program bitti");
  }
}
