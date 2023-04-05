void main(List<String> args) {
  
}
abstract class IStudent{
  final String name;
  final String age;

  IStudent(this.name, this.age);

  void saySomething(){
  print(age);
}
}


class Student implements IStudent{
  final String name;
  final String age;

  Student(this.name, this.age);
  
  @override
  void saySomething() {
    print("a");
  }
}





/**
 * Bir sınıf birden fazla interface alabilir.
 * implements ile eklenirler.
 * Hazır taslaklardır.
 * Sınıflara özellik katar. 
 */


