import 'package:flutter/material.dart';

class StateFullLifeCycleLearn extends StatefulWidget {
  const StateFullLifeCycleLearn({Key? key, required this.message})
      : super(key: key);
  final String message;
  @override
  State<StateFullLifeCycleLearn> createState() =>
      _StateFullLifeCycleLearnState();
}

class _StateFullLifeCycleLearnState extends State<StateFullLifeCycleLearn> {
  String _message = "";
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('c');
  }

  @override
  void didUpdateWidget(covariant StateFullLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _computeName();
      setState(() {});
    }
  }

  @override
  void dispose() {
    super.dispose();
    _message = "";
  }

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print('a');
  }

  void _computeName() {
    if (_isOdd) {
      _message += " Çift";
    } else {
      _message += " Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: widget.message.length.isOdd
          ? TextButton(
              onPressed: () {},
              child: Text(_message),
            )
          : ElevatedButton(
              onPressed: () {
                setState(() {
                  _message = "a";
                });
              },
              child: Text(_message),
            ),
    );
  }
}
/**
 * initState() methodu, widget daha çizilmeden önce çalışır. Daha sonra build() methodu çalışır.
 * didChangeDependencies() methodu, initState() methodundan sonra çalışır.
 * dispose() methodu, widget'in dispose() methodu çağrıldığında çalışır. Sayfanın öldüğünde çalışır.
 */