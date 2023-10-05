class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);

  String get firstName => name;
  String get lastName => surname;
}
