void main(List<String> args) {
  for (var i = 0; i < 100; i++) {
    if((i % 3 == 0) && (i % 5 == 0)){
      print("$i 'nin karesi ${i * i}");
    }
  }
}