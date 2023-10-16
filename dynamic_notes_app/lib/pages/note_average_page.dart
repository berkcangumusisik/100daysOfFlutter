import 'package:dynamic_notes_app/constants/app_constant.dart';
import 'package:flutter/material.dart';

class NoteAverageApp extends StatefulWidget {
  const NoteAverageApp({super.key});

  @override
  State<NoteAverageApp> createState() => _NoteAverageAppState();
}

class _NoteAverageAppState extends State<NoteAverageApp> {
  var formKey = GlobalKey<FormState>();
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
              Expanded(
                flex: 1,
                child: Container(color: Colors.green, child: const Text('2')),
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
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit),
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
}
