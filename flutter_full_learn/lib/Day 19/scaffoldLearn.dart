import 'package:flutter/material.dart';
import 'package:flutter_full_learn/Day%2019/containerSizedBoxLearn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scaffold samples')),
      body: const Text('merhaba'),
      backgroundColor: Colors.red,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, // Bu kısımda floatingActionButton'ın yeri belirlenir.
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        height: 200,
        decoration: ProjectContainerDecoration(),
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'a'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'b'),
        ]),
      ),
    );
  }
}

/**
 Scaffold
 * 3 yapıdan oluşur.
 * 1. AppBar
 * 2. Body
 * 3. BottomNavigationBar
 * 
 */