import 'package:flutter/material.dart';
import 'package:flutter_full_learn/Day38/package/launchMixin.dart';
import 'package:flutter_full_learn/Day38/package/loadingBar.dart';

class PackagLearnView extends StatefulWidget {
  const PackagLearnView({Key? key}) : super(key: key);

  @override
  State<PackagLearnView> createState() => _PackagLearnViewState();
}

class _PackagLearnViewState extends State<PackagLearnView> with LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onPrimary,
          onPressed: () {
            launchURL('a');
          }),
      body: Column(
        children: [
          Text('a', style: Theme.of(context).textTheme.subtitle1),
          const LoadingBar(),
        ],
      ),
    );
  }

  @override
  void name(args) {}
}
