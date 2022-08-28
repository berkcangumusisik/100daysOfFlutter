import 'package:flutter/material.dart';
import 'package:flutter_full_learn/Day39/passwordTextField.dart';

class ThemeLearnView extends StatefulWidget {
  ThemeLearnView({Key? key}) : super(key: key);

  @override
  State<ThemeLearnView> createState() => _ThemeLearnViewState();
}

class _ThemeLearnViewState extends State<ThemeLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          PasswordTextField(),
          CheckboxListTile(
            value: true,
            onChanged: (value) {},
            title: Text('Select'),
          ),
        ],
      ),
    );
  }
}
