import 'package:flutter/material.dart';
import 'package:flutter_full_learn/Day42/state_manage/stateManageLearnView.dart';

class StateManageLearnView extends StatefulWidget {
  const StateManageLearnView({Key? key}) : super(key: key);

  @override
  State<StateManageLearnView> createState() => _StateManageLearnViewState();
}

class _StateManageLearnViewState extends StateLearnViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeVisible();
        },
      ),
      appBar: AppBar(
        backgroundColor: isOpacity ? Colors.red : Colors.green,
        shadowColor: isVisible ? Colors.amber : Colors.grey,
      ),
    );
  }
}
