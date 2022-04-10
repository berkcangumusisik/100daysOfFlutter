/**
 * Kenarları parametre olarak girilen ve dikdörtgenin çevresini hesaplayan bir fonksiyon yazın.
 */
void main(List<String> args) {
  int cevre = dikdortgenCevresi(5, 6);
  print("Dikdörtgenin Çevresi : $cevre");
}

dikdortgenCevresi(int kenar1, int kenar2) {
  return (kenar1 + kenar2) * 2;
}
