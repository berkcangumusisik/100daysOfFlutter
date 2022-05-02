void main(List<String> args) {
  final String str2 = "Berkcan";
  //str2 = "Gümüşışık";
  const String str3 = "Berkcan";
  //str3 = "Gümüşışık";
  final liste1 = [1, 2, 3];
  final liste2 = [1, 2, 3];
  liste1.add(4);
  liste2.add(4);
  if (liste1 == liste2) {
    print("Eşit");
  } else {
    print("Eşit değil");
  }
}
/**
 * final ve const Immutable(degişmez) bir değişkendir.
 * Const : Oluşturulduğu andan itibaren bellek üzerinde tutulur.
 * Final : Kullanılmaya başlandığı andan itibaren bellek üzerinde tutulur.
 * 
 */