import 'package:dynamic_notes_app/constants/app_constant.dart';
import 'package:dynamic_notes_app/helper/data_helper.dart';
import 'package:flutter/material.dart';

class LetterDropdownWidget extends StatefulWidget {
  const LetterDropdownWidget({super.key, required this.onLetterSelected});
  final Function onLetterSelected;
  @override
  State<LetterDropdownWidget> createState() => _LetterDropdownWidgetState();
}

class _LetterDropdownWidgetState extends State<LetterDropdownWidget> {
  double selectedNote = 4;

  @override
  Widget build(BuildContext context) {
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
            widget.onLetterSelected(selectedNote);
          });
        },
      ),
    );
  }
}
