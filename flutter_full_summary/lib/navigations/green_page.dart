import 'package:flutter/material.dart';
import 'package:flutter_full_summary/navigations/yellow_page.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Green Page"),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          children: [
            const Text(
              "Green Page",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                if (Navigator.canPop(context)) {
                  print("Evet pop olabilir");
                } else {
                  print("Hayır pop olamaz");
                }
              },
              child: const Text("Can Pop Kullanımı"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const YellowPage()));
              },
              child: const Text("Push Replacement Kullanımı"),
            ),
          ],
        ),
      ),
    );
  }
}
