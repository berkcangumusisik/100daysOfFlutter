import 'dart:ffi';

/**
 * Mevcut bir sınıftan başka sınıfın türetilmesi için kullanılır.
 * Kodun tekrar kullanılabilirliğini artırır.
 * Sadece class için geçerlidir.
 * Üst sınıfa superclass, alt alt sınıfa subclass  denir.
 * Superclass extends ile subclass'a eklenir.
 * Bir sınıfın bir kalıtımı olabilir.
 * Bir sınıfta birden fazla kalıtım yoluyla sınıf alamaz.
 Kalıtımın Faydaları
Daha önceden yazılmış kod parçacıkları tekrar tekrar yazılmadan başka sınıflarda kullanılabilir.  
if, else, switch gibi kontrol ifadelerinin oolduğu sınıflar kötü tasarım örnekleridir. Bunun yerine kalıtım tercih edilmelidir.
Method overriding : üst sınıftaki değişken veya methodların alt sınıf tarafından değiştirilmesidir.

 */

void main(List<String> args) {
  User user1 = User();
  NormalUser normal1 = NormalUser();
  normal1.davetEt();

  SadeceOkuyabilenNormalUser user = SadeceOkuyabilenNormalUser();
  user.davetEt();
  user.login();

}

class User {
  String email = "";
  String password = "";

  void login() {
    print("Genel User Giriş Yaptı.");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Normal User Davet Etti.");
  }

  @override
  void login(){
    print("Normal User Giriş Yaptı.");
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser {
  void oku() {
    print("Sadece Okuyabilirim.");
  }
}

class AdminUser extends User {
  void toplamKullaniciSayisiniGoster() {
    print("Toplam Kullanıcı Sayısı : 20");
  }
}
