import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({Key? key, required this.message})
      : super(key: key);
  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('c');
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
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

  // Mesaj tekse yanina tek yoksa cift yaz

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
      _message += " Cift";
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
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(
              onPressed: () {
                setState(() {
                  _message = "a";
                });
              },
              child: Text(_message)),
    );
  }
}
/**
 Lifecycle
  - Statefull widget'larımızın hayat döngüsüdür.
  - 1. initState: Statefull widget'ımız oluşturulduğunda çalışır. Sadece ekran oluşturulduğunda çalışır. setState çağrıldığında çalışmaz.
  - 2. build: Statefull widget'ımız oluşturulduğunda ve her setState çağrıldığında çalışır.
  - 3. didUpdateWidget: Statefull widget'ımız oluşturulduğunda ve her setState çağrıldığında çalışır. Ancak build'den sonra çalışır.
  - 4. dispose: Statefull widget'ımızın ömrü bittiğinde çalışır. Bellekten silinir.
 */