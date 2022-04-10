/**
 * Bir üçgenin kenarlarını isimlendirilmiş parametre olarak alan fonksiyon yazınız. 
 * Bu fonksiyonun kenar değerlerine göre çeşit kenar, ikiz kenar veya eşkenar olduğunu belirtiniz.
 */
void main(List<String> args) {
  ucgenCesidi(kenar1: 3,kenar2:4 ,kenar3: 5);
}

void ucgenCesidi({int kenar1 = 1, int kenar2 = 1, int kenar3 = 1}) {
  if (kenar1 == kenar2 && kenar2 == kenar3 && kenar1 == kenar3) {
    print("Eşkenar üçgen");
  } else if(kenar1 == kenar2 && kenar1 == kenar3 && kenar2 != kenar3){
    print("İkiz kenar üçgen");
  }else{
    print("Çeşitkenar üçgen");
  }
}
