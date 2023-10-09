import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Green Page"),
      ),
      backgroundColor: Colors.green,
      body: const Center(
        child: Text(
          "Green Page",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
