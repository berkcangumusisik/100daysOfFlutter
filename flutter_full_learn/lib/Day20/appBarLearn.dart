import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = "AppBar Kullanımı";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: const Icon(Icons.chevron_left),
        automaticallyImplyLeading: false, // AppBar'ın sol butonu yok olur.
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mark_email_unread_sharp),
          ),
          const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}


/**
 AppBar
 - Sayfa üstbarı. örneğin web sitelerinde sayfada sitenin logosunun site adinin bulunduğu kısma (header) karşılık gelir.
 - leading: sayfa üstünde önceki sayfaya gitmek için kullanılır.
 - title: sayfa üstünde sayfa başlığının bulunduğu kısma karşılık gelir.
 - actions: sayfa üstünde sayfa içeriğinde yer alan butonların bulunduğu kısma karşılık gelir.
 */