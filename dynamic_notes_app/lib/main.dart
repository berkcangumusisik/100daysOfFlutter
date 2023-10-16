import 'package:dynamic_notes_app/constants/app_constant.dart';
import 'package:dynamic_notes_app/pages/note_average_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Consts.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Consts.primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const NoteAverageApp(),
    );
  }
}

/**
 * Visual density : Bize cihazın yoğunluğuna göre bir görünüm sağlar.
 */