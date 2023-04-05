void main(List<String> args) {

  Elma elma = Elma();
  AmasyaElmasi elma2 = AmasyaElmasi();
  Eatable tavuk = Tavuk();
}

abstract class Eatable {
  void howToEat();
}

abstract class Squeezable{
  void howToSqueeze();
}


class Elma implements Eatable, Squeezable{
  @override
  void howToEat() {
    print("Dilimle ve Ye");
  }

  @override
  void howToSqueeze() {
    print("Blender ile sık");
  }

}

class AmasyaElmasi extends Elma{
  @override
  void howToEat() {
    print("Yıka ve ye ");
  }

}

class Tavuk implements Eatable{
  @override
  void howToEat() {
    print("Kızart ve Ye");
  }
  
}
