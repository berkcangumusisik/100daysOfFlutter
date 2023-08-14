import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/icon_learn_view.dart';
import 'package:flutter_full_learn/101/image_learn_view.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 10;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 4, vsync: this); // vsync : animasyonun çalışma hızını belirtir.
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: () {
          _tabController.animateTo(_MyTabViews.home.index);
        }),
        bottomNavigationBar: BottomAppBar(
          notchMargin: _notchedValue,
          child: _tabbarView(),
        ),
        appBar: AppBar(),
        body: _myTabView(),
      ),
    );
  }

  TabBar _tabbarView() {
    return TabBar(
        controller: _tabController,
        tabs: _MyTabViews.values.map((e) => Tab(text: "${e.name}")).toList());
  }

  TabBarView _myTabView() {
    return TabBarView(controller: _tabController, children: [
      ImageLearnView(),
      IconLearnView(),
      IconLearnView(),
      IconLearnView(),
    ]);
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTabViewExtension on _MyTabViews {}
/**
 TabBar 
 - DefaultTabController : Bu widget ile tabbarview ve tabbar kullanılabilir. İki parametre alır. 
    - length : tabbarview içerisinde kaç tane tabbar olacağını belirtir.
    - child : tabbarview içerisindeki widgetlar
  - TabBar : Tabbarview içerisindeki tabbar widgetıdır. 
    - tabs : tabbarview içerisindeki tabbarların içerisindeki yazıları belirtir. 
  - floatingActionButtonLocation : FloatingActionButton'ın konumunu belirtir.

 */