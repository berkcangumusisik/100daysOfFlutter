import 'package:flutter/material.dart';
import 'package:flutter_full_learn/Day22/imageLearn.dart';
import 'package:flutter_full_learn/Day32/navigateDetailLearn.dart';

class NavigationLearn extends StatefulWidget {
  NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              final response = await navigateToWidgetNormal<bool>(context,
                  NavigateLearn(isOkey: selectedItems.contains(index)));

              if (response is bool) {
                addSelected(index, response);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                  color: selectedItems.contains(index)
                      ? Colors.green
                      : Colors.red),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_rounded),
        onPressed: () {
          navigateToWidget(context, ImageLearn());
        },
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: RouteSettings(),
      ),
    );
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
          builder: (context) {
            return widget;
          },
          settings: const RouteSettings()),
    );
  }
}
/**
 * Navigation ile sayfalar arasında geçiş yapılabilir.
 * Navigator.of(context).push() ile başka bir sayfaya geçiş yapılabilir ve geri dönüş yapılabilir.
 * Navigator.push(context, MaterialPageRoute(builder: (context) {GidilecekSayfa()}));
 * fullscreenDialog: true, ile yukarı doğru gidip gelir.
 * Navigator.of(context).pop(); ile geri dönüş yapılabilir.
 * 
 */