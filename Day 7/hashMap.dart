void main(List<String> args) {
  var iller = <int, String>{};
  iller[34] = "İstanbul";
  iller[06] = "Ankara";
  iller[35] = "İzmir";

  print(iller[34]);

  Map<String , int> alanKodlari = <String, int>{"Ankara" : 312, "İstanbul" : 212, "İzmir" : 232};
  print(alanKodlari["İstanbul"]);
}

/*
Map
- Key-Value yapısı vardır.
- Key ile verilere erişiriz.
- Mapler {} kullanılarak oluşturulur.
- Maplerde aynı key'den birden fazla olamaz.
- Sözlükler gibi düşünülebilir.

*/