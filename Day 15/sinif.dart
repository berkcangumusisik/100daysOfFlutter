import 'model/userModel.dart';
import 'model/userModel2.dart';

void main() {
  //  Kendi veri türlerimiz veya soyut olan taslaklara sınıf(class) denir. Kendi içinde değişkenlere ve methodlara sahiptir.
  final int customerMoney = 50;
  final String customerName = "Berkcan";
  final int customerAge = 23;
  final String customerCity = 'Ankara';

  //Müşterinin yaşı 10'dan büyükse şu işlemi yap
  controlCustomerAge(customerAge);

  final int customerMoney2 = 50;
  final String customerName2 = "Ahmet";
  final int customerAge2 = 13;
  final String customerCity2 = 'İstanbul';

  controlCustomerAge(customerMoney2);

  int? newMoney;
  if (newMoney != null) {
    print(newMoney + 50);
  } else {
    print(10 + 10);
  }
  //Müşteri şehirlerini unutmuşuz. Tekrar bunu eklemek gerekiyor.

  // Müşterileri gruplasak, yani kümelesek ve aynı özellikleri aynı şekilde gösterebilsek

  // Bankaya 3 tane müşteri gelir birinin 100tlsi var diğerinin hesabı hiç yok diğerinin 0 tlsi var
  // Hesabi olmayana gelin hesap açalım, 0 tlsi olanı kovalom, 100tlsi olana müşteriye hosgeldin diyelim

  // yeni bir method olsun bu methodda hesabi olmayanları ve parası olmayanları yok sayalım
  // para verdiklerimizi ekranda true yazalım
  List<int?> customerMoneys = [100, null, 0];

  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print('Hoşgeldiniz');
      } else {
        print('byy');
      }
    } else {
      print('haydi hesap açalım');
    }
  }
  int? controlMoney(int? money) {
    if (money != null && money > 0) {
      return money;
    }
  }

  print('----------------' * 10);

  User user1 = User('Berkcan', 15, age: 23, city: 'Ankara', id: '123');
  print(user1.name);

  // User user2 = User('vb2', 15, null, null);
  final user3 = User('Ahmet', 159, age: 13, id: "12");

  print(user3.age);

  //müşteri son gelen kişinin citysine göre kampanya yapacak şehir ankara ise
  if (user3.city == null) {
    print("Müşteri şehir bilgisi vermemiş");
  } else {
    if (user3.city == 'Ankara') {
      print('Tebrikler kazandınız');
    }
  }

  if (user3.isSpecialUser('12')) {
    user3.money += 5;
    print('para eklendi');
  }

  //

  User2 newUser2 = User2('vb', 15);
  newUser2.money += 5;
  newUser2.money = null;

  print(newUser2.toString());
}

void controlCustomerAge(int age) {
  if (age > 10) {
    print("Alışveriş yapabilirsiniz");
  } else {
    print("Alışveriş yapamazsınız");
  }
}
