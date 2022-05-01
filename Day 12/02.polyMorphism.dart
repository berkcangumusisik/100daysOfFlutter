/**
 * PolyMorphism - Çok Biçimlilik
 * PolyMorphism olması için iki sınıf arasında kalıtım ilişkisi olması gerekiyor.
 * Daha kapsamlı bir kod yazmak için kullanılır.
 * Özellikle metodların parametrelerinde PolyMorphism kullanılarak daha kapsayıcı veriler alınabilir.
 * Superclass gibi görünür subclass gibi davranır.
 */

void main(List<String> args) {
  var mudur = Mudur();
  Personel ogretmen = Ogretmen();
  Personel isci = Isci();
  mudur.iseAl(ogretmen);
  mudur.iseAl(isci);
  
}

class Personel {
  void iseAlindi() {
    print("Personel Mutlu");
  }
}

class Mudur extends Personel {
  void iseAl(Personel p) {
    p.iseAlindi();
  }
}

class Isci extends Personel {}

class Ogretmen extends Personel {}
