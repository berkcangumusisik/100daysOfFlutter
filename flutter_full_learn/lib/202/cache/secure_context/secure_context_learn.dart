import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SharedContextLearn extends StatefulWidget {
  const SharedContextLearn({super.key});

  @override
  State<SharedContextLearn> createState() => _SharedContextLearnState();
}

enum _SecureKeys { token }

class _SharedContextLearnState extends State<SharedContextLearn> {
  final _storange = const FlutterSecureStorage();
  String _title = "";
  void saveItems(String data) {
    setState(() {
      _title = data;
    });
  }

  @override
  void initState() {
    super.initState();
    getSecureItems();
  }

  Future<void> getSecureItems() async {
    _title = await _storange.read(key: _SecureKeys.token.name) ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await _storange.write(key: _SecureKeys.token.name, value: _title);
        },
        label: const Text('Add'),
      ),
      body: TextField(
        onChanged: saveItems,
      ),
    );
  }
}
