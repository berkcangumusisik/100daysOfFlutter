import 'model/productConfigModel.dart';

void main() {
  final newProduct = Product.money;
  calculateMoney(Product.money ?? 0);
  productNameChange();
  calculateMoney(Product.money ?? 0);

  //User classını kullanarak product yapmak istiyorum.
  final user1 = User("Berkcan", "aa");
  final newProduct2 = Product(user1.product);
  final newProduct3 = Product.fromUser(user1);

  // api key neydi acaba
  ProductConfig.instance.apiKey;
  ProductConfig.instance.apiKey;
  ProductLazySingleton.instance;
}

void calculateMoney(int money) {
  if (money > 5) {
    print('5 tl daha ekledik');
    Product.incerementMoney(5);
    print(Product.money);
  }
}

void productNameChange() {
  Product.money = null;
}

class Product {
  static int? money = 10;
  String name;
  Product(this.name);
  Product.berkcan([this.name = "Berkcan"]);
  factory Product.fromUser(User user) {
    return Product(user.name);
  }
  static const companyName = "BG BANK";
  static void incerementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}
