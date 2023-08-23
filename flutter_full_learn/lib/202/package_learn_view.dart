import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/package/launch_manager.dart';
import 'package:flutter_full_learn/202/package/loading_bar.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView>
    with TickerProviderStateMixin, LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          launcURL('c');
        },
      ),
      body: LoadingBar(),
    );
  }
}

/** 
 * Paketleri kullanmak için pub.dev sitesini kullanabiliriz.
 * Pub.dev sitesindeki paketlerin dokümantasyonlarına bakarak kullanabiliriz.
 * Paketi projemize eklemek için pubspec.yaml dosyasına dependencies kısmına eklememiz yeterlidir.
 * 
 */