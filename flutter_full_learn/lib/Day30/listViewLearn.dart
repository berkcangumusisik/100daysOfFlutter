import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView(
        children: [
          FittedBox(
            child: Text(
              "Merhaba",
              style: Theme.of(context).textTheme.headline1,
              maxLines: 1,
            ),
          ),
          Container(color: Colors.red, height: 300),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(color: Colors.green, child: const Card()),
                  Container(color: Colors.white, width: 100),
                  Container(color: Colors.green, width: 100),
                  Container(color: Colors.white, width: 100),
                  Container(color: Colors.green, width: 100),
                ]),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          //xx
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headline1,
              maxLines: 1,
            ),
          ),
          Container(color: Colors.red, height: 300),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(color: Colors.green, width: 100),
                Container(color: Colors.white, width: 100),
                Container(color: Colors.green, width: 100),
                Container(color: Colors.white, width: 100),
                Container(color: Colors.green, width: 100),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
          ),
          const _ListDemo(),
        ],
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({Key? key}) : super(key: key);

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    super.initState();
    print('hello');
  }

  @override
  void dispose() {
    super.dispose();
    print('exit');
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
/**
 ListView widget'ının kullanımı
 - ListView bir sonsuzluktur.
 - Genelde height değerinde sorun yoktur.
 - FittedBox widget'ını kullanarak text'i yüksekliği kısıtlamak için kullanılır.
 */