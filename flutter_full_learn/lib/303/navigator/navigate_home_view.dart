import 'package:flutter/material.dart';

class NavigateHomeView extends StatefulWidget {
  const NavigateHomeView({super.key});

  @override
  State<NavigateHomeView> createState() => _NavigateHomeViewState();
}

class _NavigateHomeViewState extends State<NavigateHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(
          child: const Icon(Icons.abc_rounded),
          onPressed: () async {
            //router.pushToPage(NavigateRoutes.detail, arguments: "vb10");
            // await NavigatorManager.instance.pushToPage(NavigateRoutes.detail, arguments: "vb10");
            // Navigator.of(context).pushNamed(NavigateRoutes.detail.withParaf, arguments: "abc");
          }),
      appBar: AppBar(title: Text(toString())),
    );
  }
}
