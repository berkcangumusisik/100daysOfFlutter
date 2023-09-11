import "package:flutter/material.dart";
import "package:flutter_full_learn/303/callback_learn.dart";

class CallBackDropdown extends StatefulWidget {
  CallBackDropdown({super.key, required this.onUserSelected});
  void Function(CallBackUser user) onUserSelected;
  @override
  State<CallBackDropdown> createState() => _CallBackDropdownState();
}

class _CallBackDropdownState extends State<CallBackDropdown> {
  CallBackUser? _user;
  void _updateUser(CallBackUser? item) {
    setState(() {
      _user = item;
    });

    if (_user != null) {
      widget.onUserSelected.call(_user!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<CallBackUser>(
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
      onChanged: _updateUser,
    );
  }
}
