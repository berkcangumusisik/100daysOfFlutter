void main(List<String> args) {
  // sayısaldan sayısala dönüşüm
  int i = 10;
  double d = 5.0;
  int sonuc1 = i + d.toInt();
  double sonuc2 = i.toDouble() + d;
  print(sonuc1);
  print(sonuc2);

  // sayısaldan stringe dönüşüm
  String s1 = i.toString();
  String s2 = d.toString();
  print(s1);
  print(s2);

  // stringden sayısala dönüşüm
  String s3 = "10";
  String s4 = "5.0";
  int sonuc3 = int.parse(s3) + int.parse(s4);
  double sonuc4 = double.parse(s3) + double.parse(s4);
  print(sonuc3);
  print(sonuc4);
}

/*
  Tür Dönüşümleri
  Dart dilindeki tüm veri tipleri birbirine dönüştürülebilir.
  int.parse() => String ifadeyi int'e dönüştürür.
  double.parse() => String ifadeyi double'a dönüştürür.
  toString() => int veya double ifadeyi String'e dönüştürür.
  toInt() => double ifadeyi int'e dönüştürür.
  toDouble() => int ifadeyi double'a dönüştürür.
*/