import 'classSingleton.dart';

void main() {
  final model = CarModel(
      category: CarModels.bmw,
      name: 'bmw x5',
      money: 1412,
      isSecondHand: false);

  final carItems = [
    CarModel(
        category: CarModels.bmw,
        name: 'bmw x5',
        money: 12,
        isSecondHand: false),
    CarModel(category: CarModels.toyota, name: 'toyota 234234', money: 45),
    CarModel(
        category: CarModels.yamaha,
        name: 'ymaaha 3324',
        money: 44,
        isSecondHand: false),
    CarModel(category: CarModels.bmw, name: 'bmw x5', money: 33),
    CarModel(
        category: CarModels.toyota,
        name: 'toyota 0ye',
        money: 55,
        isSecondHand: false),
  ];
  final resultCount =
      carItems.where((element) => element.isSecondHand == true).length;
  print(resultCount); // belli koşula uyanı ekrana ekrana getirir.
  final newCar = CarModel(category: CarModels.bmw, name: 'bmw x5', money: 33);

  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print("Patron elimizde var");
  } else {
    print("Patron elimizde böyle bir araç yok alalım");
  }

  //contains() => Listede bir elemanın var mı yok mu olduğuna bakar, varsa true yoksa false değeri döndürür.

  final resultBmwMore20 = carItems.where((element) {
    return element.category == CarModels.bmw && element.money > 20;
  }).join();
  print(resultBmwMore20);

  final carNames = carItems.map((e) => e.name).join(",");
  print(carNames);

  final mercedesCar =
      carItems.singleWhere((element) => element.category == CarModels.mercedes);
  print(mercedesCar);

  bool isHaveCarMercedes = false;
  try {
    final mercedesCar = carItems
        .singleWhere((element) => element.category == CarModels.mercedes);
    print(mercedesCar.name);
    isHaveCarMercedes = true;
  } catch (e) {
    print("Böyle bir araç elimizde yok");
    isHaveCarMercedes = false;
  } finally {
    print("Abi bu işlem biraz ağır oldu bir daha sorma $isHaveCarMercedes");
    final index = carItems.indexOf(newCar);
    print(index);

    final _mercedes =
        CarModel(category: CarModels.mercedes, name: 'merer', money: 12312);
    carItems.add(_mercedes);
    carItems.sort((first, second) => second.money.compareTo(first.money));

    final users = carItems.expand((element) => element.users).toList();
    calculateToUser(carItems);
    carItems.remove(_mercedes);
    carItems.removeWhere(
        (element) => element.category == CarModels.bmw || element.money < 30);
    print(carItems);
  }
}

void calculateToUser(List<CarModel> items) {
  final _items = [...items.toList()];
  final newItems = _items.map((CarModel e) {
    return CarModel(
        category: e.category == CarModels.bmw ? CarModels.yamaha : e.category,
        name: e.name,
        money: e.money,
        isSecondHand: false);
  }).toList();

  print(newItems);
}

// Benim bir arabalar sınıfım olacak.
// Arabaların modeli, ismi, parası kesin olacak şehri olmayacak.
//İkinci el durumu eğer müşteri söylemezse her ürün 2.el kabul edilecek.
// Benim 5 arabam olacak
// Benim arabalarımın kaç tanesi 2.el
//Yeni bir araba geldi bu bizde var gibi hissediyorum. Doğru mu?
//Bana bmw olan ve money değeri 20 den büyük arabaların ismini söyler misin?
// ya acaba sadece isimleri yan yana gösterir misin?
//Benim elimde mercedes var mı?
// Şu yeni gelen arabayı ver demişsin bu kaçıncı sırada söyler misin?
//Ben yeni bir araba aldım mercedes ekler misin?
// Arabaları küçükten büyüğe sıralar mısın
// Ben bütün arabaları user yapaıcam
// Ya bu son ekleneni silelim
// BMW olab ve 30'dan düşük olanları silelim.
class CarModel {
  final CarModels category;
  final String name;
  final double money;
  List<User> users;
  String? city;
  bool isSecondHand;

  CarModel(
      {required this.category,
      required this.name,
      required this.money,
      this.city,
      this.isSecondHand = true,
      this.users = const []});
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }
}

enum CarModels { bmw, yamaha, toyota, mercedes }
