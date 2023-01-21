void main(List<String> args) {
  User user = User("Ahmet", 100, 20, "İstanbul","123");
  print(user.name);
}

class User {
  late final String name;
  late final int money;
  late final int? age;
  late final String? city;
  late final String userCode;
  User(String name, int money, int? age, String? city, String userCode) {
    this.name = name; 
    this.money = money;
    this.age = age;
    this.city = city;
    this.userCode = userCode;
    userCode = (city ?? "İstanbul")  + name;
  }

  void printUser() {
    print("Name: $name, Money: $money, Age: $age, City: $city, UserCode: $userCode");
  }

  factory User.factoryKurucusu(String name, int money, int? age, String? city, String userCode) {
    return User(name, money, age, city, userCode);
  }

  
}

/**
 * Bir sınıftan nesne üretirken, sınıfın yapıcı metodu çalışır.
 * Bir sınıftan nesne üretirken kullanılan yapılardır.
 * Görünmeseler bile aslında varsayılan olarak varlardır.
 * Bir nesne ürettiğimizde otomatik olarak ilk çalışan metottur.
 * Kurucu metotlar boş olabildiği gibi parametre de alabilirler.
 * Kurucu metotların geri dönüş tipleri yoktur.
 * Ana Kurucu metot sadece bir tane olur.
 * İsimlendirilmiş kurucu metot istediğimiz kadar oluşturabiliriz.
 * Yapıcı metot, sınıfın adıyla aynı isimde olmalıdır.
 * this anahtar kelimesi, sınıfın kendisini ifade eder.
 * factory  metotlar, geriye bir değer döndürür.
 */