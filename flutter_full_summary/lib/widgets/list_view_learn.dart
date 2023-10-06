import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_full_summary/widgets/student.dart';

class ListViewLearn extends StatelessWidget {
  ListViewLearn({super.key});
  List<Student> allStudents = List.generate(
      500,
      (index) => Student(index + 1, "Öğrenci Adı ${index + 1}",
          "Öğrenci Soyadı ${index + 1}"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Kullanımı'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, index) {
          var student = allStudents[index];
          return Card(
              color:
                  index % 2 == 0 ? Colors.blue.shade200 : Colors.red.shade200,
              child: ListTile(
                onTap: () {
                  EasyLoading.showToast(
                    student.firstName,
                  );
                },
                onLongPress: () {
                  _alertDialog(context);
                },
                leading: const CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text(student.firstName),
                subtitle: Text(student.lastName),
                trailing: const Icon(Icons.add),
              ));
        },
        itemCount: allStudents.length,
      ),
    );
  }

  void _alertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Uyarı"),
            content: const Text("Bu bir uyarıdır."),
            actions: [
              ElevatedButton(onPressed: () {}, child: const Text("Kapat")),
              ElevatedButton(onPressed: () {}, child: const Text("Tamam")),
            ],
          );
        });
  }
}



/**
 * 
 * ListView : Liste oluşturmak için kullanılır.
 * itemBuilder : Liste elemanlarını oluşturmak için kullanılır.
 * itemCount : Liste elemanlarının sayısını belirler.
 * 
 */