Future<void> main(List<String> args) async {
  print("a");
  // 2 saniye bekle sonra gel hiçbir müşteri alma.
  await Future.delayed(Duration(seconds: 2));
  print("ab");

  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = dataAddBankMoney(55, 3);
  print(await bankMoneys.where((event) => event == 258).toList());

  print('hello');
  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print('hello2');
  });
  print('hello3');
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print('hello4');
  });
}

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 1));
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
    yield 5;
  }
}
//Bir servise cevap sonradan gelecek ve ben bu işlem yapılana kadar devam etmek istiyorsam kullanırız.