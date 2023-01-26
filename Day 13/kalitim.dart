
void main(List<String> args) {
  var araba = Araba("Kırmızı", "Otomatik", "Sedan");
  print(araba.renk);
  print(araba.vites);
  print(araba.kasaTipi);

  var nissan = Nissan("Kırmızı", "Otomatik", "Sedan", "Micra");
  print(nissan.renk);
  print(nissan.vites);
  print(nissan.kasaTipi);
  print(nissan.model);
}

class Arac {
  late String renk;
  late String vites;
  Arac(String renk, String vites) {
    this.renk = renk;
    this.vites = vites;
  }
}

class Araba extends Arac{
  late String kasaTipi;
  Araba(String renk, String vites, String kasaTipi) : super(renk, vites) {
    this.kasaTipi = kasaTipi;
  }
}

class Nissan extends Araba{
  late String model;
  Nissan(String renk, String vites, String kasaTipi, String model) : super(renk, vites, kasaTipi) {
    this.model = model;
  }
}
/**
 Kalıtım(Inheritance)
 * Mevcut bir sınıfın özelliklerini başka bir sınıfa aktarmak için kullanılır.
 * Kodun tekrar kullanılabilirliğini sağlar.
 * Sadece classlarda kullanılır.
 * Super Class => Kalıtım yaptığımız sınıf
 * Sub Class => Kalıtım yapan sınıf
 * superclass extends kelimesiyle sub classa kalıtım sağlanır.
 * Bir sınıfın tek kalıtımı olabilir.
 * Bir sınıa birden fazla sınıf kalıtımı sağlanamaz.
 class Arac{

 }

 class Araba extends Arac{

 }

 calss Nissan extends Araba{

 }
 * super anahtar kelimesi => super classın özelliklerine erişmek için kullanılır.
 */