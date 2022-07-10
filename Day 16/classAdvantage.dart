void main() {
  final user = _User("Berkcan", age: 9);

  //müşterinin yaşı 18'den küçük kontrolü yapar mısın?
  if (user.age is! int) {
    if (user.age! < 18) {
      print('evet kucuk');
      user.updateMoneyWithString("TR");
    } else {
      user.updateMoneyWithNumber(15);
    }
  }

  // Kullanıcılarımın parası var ama paranın tipi değişken olabilir.
  //Parası olan adamın o parametresi isim de olabilir değer de olabilir.
  // TR ya da 15 yazacak.
  //Ekranda göster
  final _newType = user.moneyType is String ? (user.moneyType as String) : "";

  print(_newType + "A");

  int money1 = 50;
  int money2 = 50;

  if (money1 == money2) {
    print('ok');
  }

  final moneyBank1 = Bank(40, "12");
  final moneyBank2 = Bank(30, "12");

  print(moneyBank1 == moneyBank2);

  //müşteri banka sınıfından iki elemanı toplayıp sonucunu söyler misini?
  print(moneyBank1 + moneyBank2);

  //Benim bankama gelen müşterinin idsi aynıysa aynı müşteri olmalıdır.
  print(moneyBank1.toString());
  print(moneyBank1 == moneyBank2);

  //Diğer bankadan bir modül aldık. Bunu ekleyip müşteri parasını sorgulayalım.

  //Müşterinin parasına 10 tl ekle ekrana döndür. ID'yi 1 artırıp ismini Berk yap
  moneyBank1.money += 10;
  print(moneyBank1.money);

  moneyBank1
    ..money += 10
    ..updateName('Berk');

  print(moneyBank1);
}

class _User {
  final String name;
  int? age;
  dynamic moneyType;
  _User(this.name, {this.age});
  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class Bank with BankMixin {
  int money;
  final String id;
  String? name;
  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    return money + newBank.money;
  }

  void updateName(String name) {
    this.name = name;
  }

  @override
  String toString() {
    return super.toString() + 'Berkcan';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Bank && other.id == id;
  }

  @override
  int get hashCode => money.hashCode ^ id.hashCode;
  @override
  void sayBankHello() {
    calculateMoney(100);
  }
}

mixin BankMixin {
  void sayBankHello();

  void calculateMoney(int money) {
    print('money');
  }
}
