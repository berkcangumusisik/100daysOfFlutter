import 'package:flutter/material.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({super.key});

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  CallBackUser? _user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          DropdownButton<CallBackUser>(
            value: _user,
            items: CallBackUser.dummyUsers().map((e) {
              return DropdownMenuItem(
                child: Text(
                  e.name,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                value: e,
              );
            }).toList(),
            onChanged: (CallBackUser? callbackuser) {
              setState(() {
                _user = callbackuser;
              });
            },
          )
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
