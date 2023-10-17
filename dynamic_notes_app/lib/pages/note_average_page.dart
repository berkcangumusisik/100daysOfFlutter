import 'package:dynamic_notes_app/constants/app_constant.dart';
import 'package:dynamic_notes_app/helper/data_helper.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const Expanded(
                flex: 1,
                child: ShowAverage(
                  average: 2.85,
                  lessonCount: 2,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(color: Colors.blue),
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
          _buildTextFormField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNotes(),
              _buildCredits(),
              IconButton(
                onPressed: () {},
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
    );
  }

  _buildNotes() {
    return Container(
      padding: Consts.padding,
      decoration: BoxDecoration(
        color: Consts.primaryColor.shade100.withOpacity(0.3),
        borderRadius: Consts.borderRadius,
      ),
      child: DropdownButton(
        items: DataHelper.getLetterNotes(),
        underline: Container(),
        value: selectedNote,
        onChanged: (value) {
          setState(() {
            selectedNote = value?.toDouble() ?? 4;
          });
        },
      ),
    );
  }

  _buildCredits() {
    return Container(
      padding: Consts.padding,
      decoration: BoxDecoration(
        color: Consts.primaryColor.shade100.withOpacity(0.3),
        borderRadius: Consts.borderRadius,
      ),
      child: DropdownButton(
        items: DataHelper.getAllCredits(),
        underline: Container(),
        value: selectedCredit,
        onChanged: (value) {
          setState(() {
            selectedCredit = value?.toDouble() ?? 4;
          });
        },
      ),
    );
  }
}
