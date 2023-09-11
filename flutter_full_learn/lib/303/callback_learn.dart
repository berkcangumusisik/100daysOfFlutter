import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/callback_dropdown.dart';
import 'package:flutter_full_learn/product/widget/button/answer_button.dart';
import 'package:flutter_full_learn/product/widget/button/loading_button.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({super.key});

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CallBackDropdown(onUserSelected: (CallBackUser user) {
            print(user);
          }),
          AnswerButton(
            onNumber: (number) {
              return number % 2 == 0;
            },
          ),
          LoadingButton(
            title: "Kaydet",
            onPressed: () async {
              Future.delayed(
                await Duration(seconds: 1),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CallBackUser {
  final String name;
  final int id;

  CallBackUser(this.name, this.id);

  static List<CallBackUser> dummyUsers() {
    return [
      CallBackUser("aa", 123),
      CallBackUser("bb", 124),
    ];
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CallBackUser && other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
