class Araba {
  late String renk;
  late int hiz;
  late bool calisiyorMu;

  void calistir(){
    calisiyorMu = true;
    print("Araba çalıştırıldı.");
    hiz = 5;
  }

  void durdur(){
    calisiyorMu = false;
    print("Araba durduruldu.");
    hiz = 0;
  }
  void hizlan(int miktar){
    if(calisiyorMu){
      hiz += miktar;
      print("Araba hızlandı.");
    }else{
      print("Araba çalışmıyor.");
    }
  }
  void yavasla(int miktar){
    if(calisiyorMu){
      hiz -= miktar;
      print("Araba yavaşladı.");
    }else{
      print("Araba çalışmıyor.");
    }
  }
  void bilgiAl(){
    print("Arabanın rengi: $renk");
    print("Arabanın hızı: $hiz");
    print("Arabanın çalışıyor mu: $calisiyorMu");
  }
}
