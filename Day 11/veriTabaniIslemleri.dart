import 'dart:math';

class VeriTabaniIslemleri {
  String _kullaniciAdi = "berkcan";
  String _sifre = "12345";

  bool baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == "berkcan" && _sifre == "12345") {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  bool _internetVarMi() {
    if (Random().nextBool()) {
      return true;
    } else {
      return false;
    }
  }
}
