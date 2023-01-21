void main(List<String> args) {
  var araba = Araba(2021, "BMW", true);
  araba.printAraba();


  var araba2 = Araba(2020, "Mercedes", false);
  araba2.printAraba();
  araba2.yasHesapla();


}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikVites;

  Araba(int modelYili, String marka, bool otomatikVites) {
    this.modelYili = modelYili;
    this.marka = marka;
    this.otomatikVites = otomatikVites;
  }

  void printAraba() {
    print("Model Yılı: $modelYili, Marka: $marka, Otomatik Vites: $otomatikVites");
  }

  void yasHesapla(){
    print("Arabanın Yaşı: ${2021 - modelYili!}");
  }
}
