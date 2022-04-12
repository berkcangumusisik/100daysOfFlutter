import 'dart:math';

void main(List<String> args) {
  List<int> numbers = [];
  var r = Random();
  for (var i = 0; i < 100; i++) {
    int rastgeleSayi = r.nextInt(51);//0 - 50
    numbers.add(rastgeleSayi);
  }

  numbers.sort();
  print(numbers);
}