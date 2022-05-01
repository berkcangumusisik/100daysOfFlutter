
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
  var user2 = NormalUser();
  SadeceOkuyabilenNormalUser user3 = SadeceOkuyabilenNormalUser();
  AdminUser user4 = AdminUser();
  User user5 = SadeceOkuyabilenNormalUser();
  List<User> users = [user1, user2, user3, user4, user5];

  test(user1);
  test(user2);
  test(user3);
  test(user4);
  test(user5);
}

void test(User kullanici) {
  kullanici.login();
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
  void login() {
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

  @override
  void login() {
    print("Admin User Giriş Yaptı.");
  }
}
