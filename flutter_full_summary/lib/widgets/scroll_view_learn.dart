import 'dart:math';

import 'package:flutter/material.dart';

class ScrollViewLearn extends StatelessWidget {
  const ScrollViewLearn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('SliverAppBar'),
            backgroundColor: Colors.red,
            expandedHeight: 200,
            floating: false,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage('assets/images/yazilim.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          SliverList(
            delegate: SliverChildBuilderDelegate(
              _dynamicListElement,
              childCount: 6,
            ),
          ),
        ],
      ),
    );
  }

  Widget _dynamicListElement(BuildContext context, int index) {
    return Container(
      height: 100,
      color: _randomColor(),
      alignment: Alignment.center,
      child: Text(
        'Dinamik Liste Elemanı ${index + 1}',
        style: const TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color _randomColor() {
    return Color.fromARGB(
      255,
      Random().nextInt(255),
      Random().nextInt(255),
      Random().nextInt(255),
    );
  }
}

class ConstSliverList extends StatelessWidget {
  const ConstSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        const ListElement(
          height: 100,
          color: Colors.yellow,
          text: 'Sabit Liste Elemanı 1',
        ),
        const ListElement(
          height: 100,
          color: Colors.green,
          text: 'Sabit Liste Elemanı 2',
        ),
        const ListElement(
          height: 100,
          color: Colors.blue,
          text: 'Sabit Liste Elemanı 3',
        ),
        const ListElement(
          height: 100,
          color: Colors.purple,
          text: 'Sabit Liste Elemanı 4',
        ),
        const ListElement(
          height: 100,
          color: Colors.orange,
          text: 'Sabit Liste Elemanı 5',
        ),
      ]),
    );
  }
}

class ListElement extends StatelessWidget {
  final double? height;
  final Color? color;
  final String? text;

  const ListElement({
    Key? key,
    this.height,
    this.color,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: color,
      alignment: Alignment.center,
      child: Text(
        text ?? 'Sabit Liste Elemanı',
        style: const TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }
}






/**
 * CustomScrollView : CustomScrollView, birden fazla sliver widget'ını bir araya getirir.
 * SliverAppBar : SliverAppBar, uygulamanızın üst kısmında bulunan app bar'ı oluşturur.
 * SliverList : SliverList, elemanlarınızı liste halinde düzenler.
 * SliverGrid : SliverGrid, elemanlarınızı grid halinde düzenler.
 * SliverGrid.count() : SliverGrid'ın eleman sayısını belirler.
 * SliverGrid.extent() : SliverGrid'ın elemanlarının boyutunu belirler.
 * SliverFixedExtentList : SliverFixedExtentList, elemanlarınızı liste halinde düzenler ve elemanlarınızın boyutunu belirler.
 * 
  SliverAppBar:
  title: App Bar'ın başlığını belirler.
  backgroundColor: App Bar'ın arka plan rengini belirler.
  expandedHeight: App Bar'ın genişliğini belirler.
  floating: App Bar'ın kaydırılırken görünüp görünmeyeceğini belirler.
  pinned: App Bar'ın kaydırılırken sabit kalıp kalmayacağını belirler.

 */