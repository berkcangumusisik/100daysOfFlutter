void main() {
  //Benim bir müşterim var parası var mı yok mu kontrol eder misin?
  final int userMoney = 0;
  controlUserMoney(userMoney, 0);
  if (userMoney > 5) {
    print("Parası var");
  } else {
    print("Parası yok");
  }

  final newUserMoney = 50;

  print(newUserMoney / 13);

  int result = convertToDolar(newUserMoney);

  print(result);

  // Bana bir dolar hesaplama yap eğer ben sana soylemezsem yeni bir durum var diye her zaman 13 al
  final newResult = convertToStandartDolar(100, dolarIndex: 13);
  final newResult2 = convertToStandartDolar(100);
  final newResult3 = convertToEuro(userMoney: 500);
  print(sayHello("Berkcan"));
}

void controlUserMoney(int money, int minValue) {
  if (money > minValue) {
    print("Para var");
  } else {
    print("Para yok");
  }
}

int convertToDolar(int userMoney) {
  return userMoney ~/ 3;
}

int convertToStandartDolar(int userMoney, {int dolarIndex: 14}) {
  return userMoney ~/ dolarIndex;
}

int convertToEuro({required int userMoney, int dolarIndex = 14}) {
  return userMoney ~/ dolarIndex;
}

String sayHello(String name) {
  return "Hello $name";
}
