void main() {}

abstract class IStudent {
  final String name;
  final String age;
  int? schoolId;
  IStudent(this.name, this.age);

  void saySomething() {
    print(age);
  }
}

class Student implements IStudent {
  final String name;
  final String age;

  Student(this.name, this.age);
  
  @override
  void saySomething() {
    // TODO: implement saySomething
  }
  
  @override
  int? schoolId;
}

class Student2 implements IStudent {
  final String name;
  final String age;

  Student2(this.name, this.age);
  
  @override
  void saySomething() {
    // TODO: implement saySomething
  }
  
  @override
  int? schoolId;
}
