void main(List<String> args) {
  final customerMouse = Mouse.Apple;

  switch (customerMouse) {
    case Mouse.Apple:
      print('Apple Mouse');
      break;
    case Mouse.Logitech:
      print('Logitech Mouse');
      break;
    case Mouse.A4:
      print('A4 Mouse');
      break;
    case Mouse.Magic:
      print('Magic Mouse');
      break;
    default:
      print('Mouse not found');
  }

}

enum Mouse {
  Magic,
  Apple,
  Logitech,
  A4,
}

/**
 * Enum, projelerde bir çok yerde kullanılır.
 * Enumların bize sağladığı en büyük avantaj ise içerisinde bir çok değer tutabilmemizdir.
 * Switch case yapısı ile kullanıldığında çok daha kolay bir şekilde kullanılabilir.
 * EnumAdi.Eleman şeklinde kullanılır.
 */