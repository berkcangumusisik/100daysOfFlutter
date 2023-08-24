import 'package:flutter/material.dart';

import '../demos/password_text_field.dart';

class ThemeLearnView extends StatefulWidget {
  const ThemeLearnView({Key? key}) : super(key: key);

  @override
  State<ThemeLearnView> createState() => _ThemeLearnViewState();
}

class _ThemeLearnViewState extends State<ThemeLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        const PasswordTextField(),
        CheckboxListTile(
          value: true,
          onChanged: (val) {},
          title: const Text('select'),
        )
      ]),
    );
  }
}