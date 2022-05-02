void main(List<String> args) {
  var kus = Kus();
  kus.fly();
}

abstract class Hayvan {}

abstract class Ucabilenler {
  void fly();
}

abstract class Havlayabilenler {
  void bark();
}

abstract class Kosabilenler {
  void run();
}

class Kopek extends Hayvan implements Havlayabilenler, Kosabilenler {
  @override
  void bark() {
    print("Köpek Havlayabilir");
  }

  @override
  void run() {
    print("Köpek koşabilir");
  }
}

class Kus extends Hayvan implements Ucabilenler {
  @override
  void fly() {
    print("Kuş uçabilir.");
  }
}

class Insan implements Kosabilenler {
  @override
  void run() {
    print("İnsan Koşabilir.");
  }
}
/**
 * INTERFACE 
 * Bir sınıf birden fazka interface alabilir.
 * Implements ile dahil edilir.
 * Ortak özelliği olan ancak kalıtımsal olarak alakası olmayan sınıflar bir çatı altında toplanır.
 * Hazır sınıf olarak düşünebiliriz
 */