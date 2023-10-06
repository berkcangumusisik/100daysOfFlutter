import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 40,
            ),
            itemBuilder: (BuildContext context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.teal[100 * (index % 9)],
                  gradient: const LinearGradient(
                    colors: [
                      Colors.yellow,
                      Colors.blue,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/yazilim.jpg"),
                      fit: BoxFit.cover),
                ),
                width: 300,
                height: 300,
                child: const Center(
                  child: Text("Flutter"),
                ),
              );
            }));
  }
}
