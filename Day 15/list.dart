void main() {
  // Bir bankaya on musteri gelir bunlarin 100 tlsi 110tl 50 tlsi vardir

  final int money1 = 100;
  final int money2 = 110;

  // 100 buyuk olanlara hosgeldiniz beyfendi

  if (money1 > 100) {
    print('beyfendi');
  }

  if (money2 > 100) {
    print('aa');
  }

  List<int> moneys = [100, 110, 500, 200, 300];
  print("1. Müşterinin parası : ${moneys[0]}");
  moneys.sort(); // sıralamayı sağlar.
  moneys.add(15); // listenin sonuna yeni eleman eklemeyi sağlar.
  moneys.insert(2, 300); // belli bir indekse veri eklemeyi sağlar.
  moneys.insert(0, 5);
  print(moneys);

  final List<int> newMoneys = [100, 110, 500, 200, 300];
  newMoneys.add(4);
  newMoneys.clear(); // liste içerisini boşaltır
  print(newMoneys);

  // 100 tanme musteri yap bunlarin hepsine sira ile numarasina gore 5 tl ekle

  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  print(customerMoney);

  List<int> moneyCustomerNews = [100, 30, 40, 60, -5];
  moneyCustomerNews.sort();
  for (int index = 0; index < moneyCustomerNews.length; index += 1) {
    print('Müşterinin parası: ${moneyCustomerNews[index]}');
    if (moneyCustomerNews[index] > 35) {
      print('Krediniz hazır.');
    } else if (moneyCustomerNews[index] > 0) {
      print('kredi veremeyiz ama bi bakalım.');
    } else {
      print('by');
    }
  }

  print("----------");

  for (int index = moneyCustomerNews.length - 1; index >= 0; index += -1) {
    print('Müşteri Parası: ${moneyCustomerNews[index]}');
    if (moneyCustomerNews[index] > 35) {
      print('kredi hazır');
    } else if (moneyCustomerNews[index] > 0) {
      print('kredi veremeyiz ama bi bakalım');
    } else {
      print('by');
    }
  }

  List<dynamic> users = [1, "a", true];
  for (var item in users) {
    print(item);
  }

  List<String> userNames = ['ali', 'mehmet', 'ayse'];

  userNames.contains('veli');

  for (var item in userNames) {
    if (item == 'veli') {
      print('var');
    }
  }
}
