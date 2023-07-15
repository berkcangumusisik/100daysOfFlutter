import 'package:flutter/material.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = "AppBar Learn View";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: Icon(Icons.menu), // Sol tarafta menü iconu
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search)), // Sağ tarafta arama iconu
          const Center(child: CircularProgressIndicator()),
        ],
      ),
      body: Column(children: const []),
    );
  }
}
