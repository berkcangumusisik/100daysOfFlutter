/**
 * Kullandığımız değişkenlerin null olup olmadığını kontrol etmemiz gerekir.
 * ? operatörü ile null olup olmadığını kontrol edebiliriz. null ise hata oluşmadan korumaya alır. null olmadıysa normal çalışır.
 * ! operatörü ile null olmayacağına emin olduğumuz değişkenleri kullanabiliriz.
 */
void main(List<String> args) {
  String? isim;
  isim = "Ahmet";
  print(isim);

  if(isim != null){
    print(isim.length);
  }else{
    print("isim null");
  }

}
