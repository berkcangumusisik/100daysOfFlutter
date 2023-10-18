import 'package:dynamic_notes_app/constants/app_constant.dart';
import 'package:dynamic_notes_app/helper/data_helper.dart';
import 'package:dynamic_notes_app/model/lesson.dart';
import 'package:dynamic_notes_app/widgets/credit_dropdown_widget.dart';
import 'package:dynamic_notes_app/widgets/lesson_list.dart';
import 'package:dynamic_notes_app/widgets/letter_dropdown.dart';
import 'package:dynamic_notes_app/widgets/show_average.dart';
import 'package:flutter/material.dart';

class NoteAverageApp extends StatefulWidget {
  const NoteAverageApp({super.key});

  @override
  State<NoteAverageApp> createState() => _NoteAverageAppState();
}

class _NoteAverageAppState extends State<NoteAverageApp> {
  var formKey = GlobalKey<FormState>();
  double selectedNote = 4;
  double selectedCredit = 1;
  String lessonName = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: Text(
            Consts.appTitle,
            style: Consts.headingStyle,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(child: _buildForm()),
              ),
              Expanded(
                flex: 1,
                child: ShowAverage(
                  lessonCount: DataHelper.allLessons.length,
                  average: DataHelper.calculateAverage(),
                ),
              ),
            ],
          ),
          Expanded(
            child: LessonList(
              onDismiss: (index) {
                DataHelper.allLessons.removeAt(index);
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }

  _buildForm() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: _buildTextFormField()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: LetterDropdownWidget(onLetterSelected: (letter) {
                    selectedNote = letter;
                  }),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CreditDropdownWidget(onCreditSelected: (credit) {
                    selectedCredit = credit;
                  }),
                ),
              ),
              IconButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var addLesson = Lesson(
                      name: lessonName,
                      letterNote: selectedNote,
                      credit: selectedCredit,
                    );
                    DataHelper.addLesson(addLesson);
                  }
                },
                icon: const Icon(Icons.arrow_forward_ios_outlined),
                color: Consts.primaryColor,
                iconSize: 30,
              ),
            ],
          )
        ],
      ),
    );
  }

  _buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Ders Adı',
        labelText: 'Ders Adı',
        border: OutlineInputBorder(
          borderRadius: Consts.borderRadius,
        ),
        filled: true,
        fillColor: Consts.primaryColor.shade100.withOpacity(0.3),
      ),
      onSaved: (newValue) {
        setState(() {
          lessonName = newValue ?? "";
        });
      },
      validator: (s) {
        if (s!.isEmpty) {
          return "Ders adı boş olamaz";
        } else {
          return null;
        }
      },
    );
  }
}
