void main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      print("continue i değeri: $i");
    } else {
      print("i değeri 5den küçük oldugu için herhangi bir işlem yapılmayacak");
      continue;
    }
  }

  print("---------------------");
  var sayac = 0;
  while (sayac < 5) {
    if (sayac == 3) {
      break;
    }
    print(sayac);
    sayac += 1;
  }
}
/**
 * break = çalışan döngüden çıkılmasını
 * continue = döngü çalışırken belli bir durumda tekrar başa dönmesini sağlar. İşlemi pas geçer

 */