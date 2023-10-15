import 'package:flutter/material.dart';

class DateTimeLearn extends StatefulWidget {
  const DateTimeLearn({super.key});

  @override
  State<DateTimeLearn> createState() => _DateTimeLearnState();
}

class _DateTimeLearnState extends State<DateTimeLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DateTime Kullanımı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                ).then((value) {
                  print(value);
                });
              },
              child: const Text("Tarih Seç"),
            ),
            ElevatedButton(
              onPressed: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                ).then((value) {
                  print(value);
                });
              },
              child: const Text("Saat Seç"),
            ),
          ],
        ),
      ),
    );
  }
}

/**
 * showDatePicker() : Tarih seçmek için kullanılır.
 * context : Tarih seçme işleminin yapılacağı sayfanın context'ini belirtir.
 * initialDate : Tarih seçme işlemi başladığında varsayılan olarak seçili olacak tarihi belirtir.
 * firstDate : Tarih seçme işlemi başladığında seçilebilecek ilk tarihi belirtir.
 * lastDate : Tarih seçme işlemi başladığında seçilebilecek son tarihi belirtir.
 * .then() : Tarih seçme işlemi bittiğinde çalışacak fonksiyonu belirtir.
 * 
 * showTimePicker() : Saat seçmek için kullanılır.
 * context : Saat seçme işleminin yapılacağı sayfanın context'ini belirtir.
 * initialTime : Saat seçme işlemi başladığında varsayılan olarak seçili olacak saati belirtir.
 * .then() : Saat seçme işlemi bittiğinde çalışacak fonksiyonu belirtir.
 * 
 */