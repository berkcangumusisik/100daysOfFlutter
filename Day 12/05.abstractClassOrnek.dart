void main(List<String> args) {
  Veritabani db = FirebaseDB();
  db.userDelete();
  db.userSave();
  db.userUpdate();
}
void userGuncelle(Veritabani veritabani){
  veritabani.userUpdate();
}
abstract class Veritabani {
  void userSave();
  void userUpdate();
  void userDelete();
}

class OracleDB extends Veritabani {
  @override
  void userDelete() {
    print("Oracle db'den user silindi");
  }

  @override
  void userSave() {
    print("Oracle db'ye user kaydedildi");
  }

  @override
  void userUpdate() {
    print("Oracle db'de user güncellendi");
  }
}


class FirebaseDB extends Veritabani{
  @override
  void userDelete() {
    print("Firebase db'den user silindi");
  }

  @override
  void userSave() {
    print("Firebase db'ye user kaydedildi");
  }

  @override
  void userUpdate() {
    print("Firebase db'de user güncellendi");
  }

}