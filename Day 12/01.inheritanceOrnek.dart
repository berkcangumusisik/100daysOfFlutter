void main(List<String> args) {
  var topkapiSarayi = Saray(10, 100);
  var bogazVilla = Villa(true, 20);

  print(topkapiSarayi.kuleSayisi);
  print(topkapiSarayi.pencereSayisi);

  print(bogazVilla.garajVarMi);
  print(bogazVilla.pencereSayisi);
}

class Ev {
  late int pencereSayisi;
  Ev(this.pencereSayisi);
}

class Villa extends Ev {
  late bool garajVarMi;
  Villa(this.garajVarMi, int pencereSayisi) : super(pencereSayisi);
}

class Saray extends Ev {
  late int kuleSayisi;
  Saray(this.kuleSayisi, int pencereSayisi) : super(pencereSayisi);
}
