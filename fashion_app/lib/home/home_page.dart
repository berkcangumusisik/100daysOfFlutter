import 'package:fashion_app/home/follow_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Moda Uygulaması",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        body: const FollowBar(),);
  }
}
