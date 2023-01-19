// Parametre olarak girilen kenar sayısına göre iç açılar toplamını hesaplayan fonksiyonu yazınız.
// Formül: (n-2) * 180

void main(List<String> args) {
  var icAci = IcAci();
  int sonuc = icAci.hesapla(5);
  print(sonuc);
}

class IcAci{
  int hesapla(int kenarSayisi){
    return (kenarSayisi - 2) * 180;
  }
}