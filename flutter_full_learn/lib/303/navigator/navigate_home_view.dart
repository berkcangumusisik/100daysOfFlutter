import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/navigator/navigator_routes.dart';

class NavigateHomeView extends StatefulWidget {
  const NavigateHomeView({super.key});

  @override
  State<NavigateHomeView> createState() => _NavigateHomeViewState();
}

class _NavigateHomeViewState extends State<NavigateHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .pushNamed(NavigateRoutes.homeDetail.withParaf, arguments: "id");
        },
        child: Icon(Icons.abc_rounded),
      ),
      appBar: AppBar(
        title: Text(
          toString(),
        ),
      ),
    );
  }
}
