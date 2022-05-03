void main(List<String> args) async {
  print("İnternetten kişi verisi getirelecek");
  kisiyleIlgiliIslemler();
  print("İşlem bitti");
}
void kisiyleIlgiliIslemler() async{
  String kisi = await kisiVerisiGetir();
  print(kisi.length);
}
Future<String> kisiVerisiGetir() {
  return Future<String>.delayed(Duration(seconds: 5), () {
    return "Kişi Adı: Berkcan";
  });
}
/**
 * async: Birden fazla işlem yaptırmayı sağlar.
 * await: İşlem yaparken bazı kodlar hata oluşturur. Hata oluşmaması için await kullanılır.
 */