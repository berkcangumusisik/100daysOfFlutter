void main() {
  final customerMouse = Mouses.a4;
  print(customerMouse.index);

  print(customerMouse.name);

  if (customerMouse == Mouses.a4) {}

  if (customerMouse.name == 'a4') {}
  if (customerMouse.isCheckName('a4')) {
    print('Var');
  }

  String? name;
  if ('ali'.isAdmin()) {
    print('object');
  }
  name.isAdmin();
}

enum Mouses { magic, apple, logitech, a4 }

extension MousesSelectedExtension on Mouses {
  bool isCheckName(String name) {
    return this.name == name;
  }
}

extension StringUserCheckExtension on String? {
  bool isAdmin() {
    return (this ?? '').toLowerCase() == 'admin'.toLowerCase();
  }
}
//Enum sınıflandırma işlemini sağlar. Enumlar geliştirme yaparken performansı yüksek performans sağlar.