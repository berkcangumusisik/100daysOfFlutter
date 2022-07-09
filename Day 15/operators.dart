void main() {
  int money = 5;
  money += 1; // money = money + 1
  money++; // money = money + 1
  String name = "Berkcan";
  String surname = "Gümüşışık";
  print(name + " " + surname);

  if (name == "Berkcan"){}
  if (name != 'Berkcan') {}
  if (name.length > 'Berkcan'.length) {}
  if (name.length < 'Berkcan'.length) {}
  if (name.length <= 'Berkcan'.length) {}
  if (name.length >= 'Berkcan'.length) {}

   const int appleMoney = 20;
  const double disccount = 2.5;

  int myMoney = 30;

  myMoney = myMoney - (appleMoney ~/ disccount);
  print(myMoney);
  // 11 / 2 kalan kac? 1
  print(myMoney % 2 == 0);
  print(myMoney.isOdd);
}
/**
 * + Toplama
 * - Çıkarma
 * / Bölme
 * * Çarpma
 * % Mod alma
 */