class Musteri {
  late int _musteriNo;
  //Musteri(this._musteriNo);
  Musteri(int musteriNo) {
    musteriNoKontrol(musteriNo);
  }
  String get musteriNoSoyle {
    return "Müşteri No : $_musteriNo";
  }

  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else {
      return;
    }
  }

  void musteriNoKontrol(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else {
      return;
    }
  }

  void bilgileriYazdir() {
    print("Müşteri oluşturuldu. Müşteri No: $_musteriNo");
  }
}
