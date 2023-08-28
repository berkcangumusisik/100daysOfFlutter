import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({super.key});

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ImagePaths.image_collection.toWidget(height: 500),
      ),
    );
  }
}

enum ImagePaths { image_collection }

extension ImagePathExtension on ImagePaths {
  String path() {
    return "assets/png/$name.png";
  }

  Widget toWidget({double height = 24}) {
    return Image.asset(
      path(),
      height: height,
    );
  }
}
