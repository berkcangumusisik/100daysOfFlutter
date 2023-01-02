void main(List<String> args) {
  // Break => işlemi bitirir
  var sayac = 0;
  while (sayac < 5) {
    if (sayac == 3) {
      break;
    }
    print(sayac);
    sayac++;

    print("------------------");
    // Continue : işlemi pas geçer
    for (var i = 0; i < 3; i++) {
      if(i == 3){
        continue;
      }

      print(i);
    }
  }
}