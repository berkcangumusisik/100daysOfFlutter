class Otobus{
  late int kapasite;
  late String nereden;
  late String nereye;
  late int yolcuSayisi;

  void bilgiAl(){
    print("Otobüsün kapasitesi: $kapasite");
    print("Otobüsün nereden gittiği: $nereden");
    print("Otobüsün nereye gittiği: $nereye");
    print("Otobüsün yolcu sayısı: $yolcuSayisi");
  }

  void yolcuAl(int miktar){
    if(yolcuSayisi < kapasite){
      yolcuSayisi += miktar;
      print("Yolcu alındı");
    }else{
      print("Otobüs dolu.");
    }
  }

  void yolcuIndir(int miktar){
    if(yolcuSayisi > 0){
      yolcuSayisi -= miktar;
      print("Yolcu indirildi");
    }else{
      print("Otobüs boş.");
    }
  }
}