/**
 CONSTRUCTORS - KURUCU METOTLAR
 * Bir sınıftan nesne oluşturmak için gerekli olan yapılardır.
 * 1-Default : Sınıf adının yanına () dediğimizde çalışan ve de sınıf adıyla aynı olan methoddur.
 *    Ogrenci berkcan=new Ogrenci() dediğimizde aslında default kurucu çalışır.
 *    Default constructor sınıfın içinde eğer elle yazıp belirtmesek bile olan Ogrenci(){} şeklinde tanımlı boş bir methoddur.
 *    Kurucu methodların geri dönüş tipi olmaz.
 *  2- Parametreli Kurucu Method : Aslında default constructorın parametre almış haline denir.
 *  Dart dilinde method overloading olmadığı için sadece ya default yapıcı ya da parametreli yapıcı olmalıdır.
 * 
 *  3- Named (İsimlendirilmiş) : Sınıf içerisinde 
 *    SinifAdi.methodAdi(){
 *    buraya kodlar gelir.
 * }
 *   //Istediniz sayıda isimlendirilmiş kurucu oluşturabilirsiniz. 
 * late: Değer atamadan boş bir değişken oluşturmayı sağlar.
 * this: bir sınıfın içerisinde, o sınıfın o anki objesine işaret eder.
 */
void main(List<String> args) {
  Araba honda = Araba(2020,"Honda",true);
  honda.modelYili = 2021;
  honda.bilgileriSoyle();
  var bmw = Araba(2021,"BMW",true);
  bmw.yasHesapla();
  var citroen = Araba.markasizKurucuMetot(true, 2019);
  Araba suzuki = Araba.modelYiliOlmayanKurucuMetot(true, "Suzuki");

}

class Araba{
  late int modelYili;
  late String marka;
  late bool? otomatikMi;
  /*Araba(){
    print("Kurucu Metot Tetiklendi");
  }*/
  Araba(this.modelYili,this.marka,this.otomatikMi){
    print("Kurucu Metot Tetiklendi");
  }
  /*Araba(int yil, String m, bool o){
    print("Kurucu Metot Tetiklendi");

    this.modelYili = modelYili;
    this.marka = marka;
    this.otomatikMi = otomatikMi;
    modelYili = yil;
    marka = m;
    otomatikMi = o;
  }
  */

  Araba.markasizKurucuMetot(this.otomatikMi,this.modelYili);
  Araba.modelYiliOlmayanKurucuMetot(this.otomatikMi, this.marka);
  void bilgileriSoyle(){
    print("Arabanın model yılı $modelYili, markası $marka, otomatik mi : $otomatikMi");
  }

  void yasHesapla(){
    if(modelYili != null){
      print("Arabanın yaşı ${2022- modelYili}");
    }else{
      print("Model yılı mevcut değil");
    }
    
  }
}