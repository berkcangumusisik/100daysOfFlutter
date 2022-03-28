void main(List<String> args) {
  // Sayısaldan Sayısala
  int i = 42;
  double d = 42.45;
  int sonuc1 = d.toInt(); // ondalıklı sayıyı tam sayıya çevirir
  double sonuc2 = i.toDouble();// tam sayıyı ondalıklı sayıya çevirir
  print(sonuc1);
  print(sonuc2);

  // Sayısaldan Metne
  String str1 = i.toString();
  String str2 = d.toString();
  print(str1);
  print(str2);


  //Metinden sayısala
  int s1 = int.parse(str1);
  double s2 = double.parse(str2);
  print(s1);
  print(s2);
}

