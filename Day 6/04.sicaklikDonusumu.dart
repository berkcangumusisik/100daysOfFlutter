/**
 * Parametre olarak girilen dereceyi fahrenhiet'a dönüştürüp geri göndüren bir metod yazınız.
 * T(F) =T(C) * 1.8 + 32 
 */
void main(List<String> args) {
  double der = 30;
  double donustur = sicaklikDonustur(der);
  print("$der Derece = $donustur Fahrenheit");
}

double sicaklikDonustur(double derece) {
  double fahrenheit = derece * 1.8 + 32;
  return fahrenheit;
}
