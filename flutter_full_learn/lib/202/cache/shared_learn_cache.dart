import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/cache/shared_manager.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({super.key});

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStatefull<SharedLearn> {
  int _currentValue = 0;
  late final SharedManager _manager;
  @override
  void initState() {
    super.initState();
    _manager = SharedManager();
    _initalize();
  }

  void _initalize() async {
    changeLoading();
    await _manager.init();
    changeLoading();
    getDefaultValues();
  }

  Future<void> getDefaultValues() async {
    _onChangeValue(_manager.getString(SharedKeys.counter) ?? "");
  }

  void _onChangeValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            _currentValue.toString(),
          ),
        ),
        actions: [
          isLoading
              ? Center(
                  child: CircularProgressIndicator(
                      color: Theme.of(context).scaffoldBackgroundColor),
                )
              : SizedBox.shrink(),
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _saveValueButton(),
          _removeValueButton(),
        ],
      ),
      body: TextField(
        onChanged: ((value) {
          _onChangeValue(value);
        }),
      ),
    );
  }

  FloatingActionButton _saveValueButton() {
    return FloatingActionButton(
      child: Icon(Icons.save),
      onPressed: (() async {
        changeLoading();
        _manager.saveString(SharedKeys.counter, _currentValue.toString());
        changeLoading();
      }),
    );
  }

  FloatingActionButton _removeValueButton() {
    return FloatingActionButton(
      child: Icon(Icons.remove),
      onPressed: (() async {
        changeLoading();
        _manager.removeItem(SharedKeys.counter);
        changeLoading();
      }),
    );
  }
}

abstract class LoadingStatefull<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
/** 
 * Shared Preferences
 * - Shared Preferences, uygulamamızın verilerini cihazımızda tutmamızı sağlayan bir pakettir.
 * - Uygulamamızı kapatıp açsak bile verilerimiz cihazımızda tutulur.
 */