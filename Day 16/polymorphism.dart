void main() {
  IUser user = Turk();
  user.sayName();
  user = English();
  user.sayName();
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void sayName();
}

class Turk implements IUser {
  @override
  String get name => "Berkcan";

  @override
  void sayName() {
    print("Merhaba kapıdan hoş geldiniz $name");
    print("Karnın aç mı?");
  }
}

class English implements IUser {
  @override
  String get name => "Adam";

  @override
  void sayName() {
    print('welcome to your home $name');
    print("Let's meet our friends in Oxford");
  }
}

class German {
  @override
  String get name => "Berkcan";

  @override
  void sayName() {
    print("Merhaba kapıdan hoş geldiniz $name");
    print("Karnın aç mı?");
  }
}
