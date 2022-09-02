import 'package:flutter/material.dart';
import 'package:flutter_full_learn/Day42/oopLearn.dart';

class OOPLearnView extends StatefulWidget {
  OOPLearnView({Key? key}) : super(key: key);

  @override
  State<OOPLearnView> createState() => _OOPLearnViewState();
}

class _OOPLearnViewState extends State<OOPLearnView> {
  FileDownload? download;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    download = FileDownload();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OOP Learn View'),
        actions: const [
          CircularProgressIndicator(color: Colors.white),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          download?.downLoadItem(null);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
