void main() {
  final userNormal = User("Berkcan", 15);
  final usersBank = BankUser('name', 155, 123);
  final usrSpecial = SpecialUser('asdas', 12312, 123123, 30);

  userNormal.sayMoneyWithCompanyName();
  usersBank.sayMoneyWithCompanyName();
  usrSpecial.sayMoneyWithCompanyName();

  print(usrSpecial.calculateMoney);
  print(usrSpecial.money);
}

abstract class IUser {
  final String name;
  final int money;
  IUser(this.name, this.money);

  void sayMoneyWithCompanyName() {
    print("$name $money TL paranız bulunmaktadır");
  }
}

class User extends IUser {
  final String name;
  final int money;
  User(this.name, this.money) : super(name, money);
}

class BankUser extends IUser {
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name, money);
}

class SpecialUser extends IUser {
  final String name;
  final int money;
  final int bankingCode;
  late final int _disccount;

  SpecialUser(this.name, this.money, this.bankingCode, int disccount) : super(name, money) {
    _disccount = disccount;
  }

  int get calculateMoney => money - (money ~/ _disccount);
}
/**
 * Birden çok sınıfta aynı işlemi yapmak istiyorsak bir abstract class yani soyut bir sınıf oluşturarak bu sınıf içerisine ortak özellikler eklenir. 
 * Daha sonra extends ile birlikte diğer ekstra özellikler eklenecek sınıflara dahil edilir. 
 * super anahtar sözcüğü, hemen üst sınıf nesnesine başvurmak için kullanılan bir başvuru değişkenidir. 
 * Extends etme işlemine  PolyMorphism(Çok biçimlilik) denir. PolyMorphism olması için iki sınıf arasında kalıtım ilişkisi olması gerekiyor.
 */